#!/usr/bin/env sh
set -e

# -------------------------------------------------
# Repository (GitLab)
# -------------------------------------------------

REPO_HTTPS="https://gitlab.com/FF4F00/FF4F00.git"
REPO_SSH="git@gitlab.com:FF4F00/FF4F00.git"

# -------------------------------------------------
# Paths
# -------------------------------------------------

WORKDIR="$HOME/.wrk_"
PROJECTS_DIR="$HOME/.houston"
LOG_DIR="$HOME/.log"

BIN_SRC="$WORKDIR/.bin"
BIN_DST="/usr/local/bin"

echo "==> FF4F00 Platform Installer"
echo
echo "Platform (replaceable):  $WORKDIR"
echo "Projects (persistent):   $PROJECTS_DIR"
echo "Captain’s Log:           $LOG_DIR"
echo

# -------------------------------------------------
# Preflight
# -------------------------------------------------

if ! command -v git >/dev/null 2>&1; then
  echo "❌ git is required but not installed."
  exit 1
fi

# -------------------------------------------------
# Ensure persistent user directories
# -------------------------------------------------

mkdir -p "$PROJECTS_DIR"
mkdir -p "$LOG_DIR"

# -------------------------------------------------
# Replace platform
# -------------------------------------------------

if [ -d "$WORKDIR" ]; then
  echo "==> Removing existing platform"
  rm -rf "$WORKDIR"
fi

echo "==> Cloning platform (GitLab)"
git clone "$REPO_HTTPS" "$WORKDIR"

cd "$WORKDIR"

echo "==> Setting git remote to SSH (GitLab)"
git remote set-url origin "$REPO_SSH" || true

# -------------------------------------------------
# Validate platform layout
# -------------------------------------------------

if [ ! -d "$BIN_SRC" ]; then
  echo "❌ Missing required directory: $BIN_SRC"
  exit 1
fi

# -------------------------------------------------
# Install CLI binaries (EXECUTABLES ONLY)
# -------------------------------------------------

echo "==> Installing CLI tools"

for tool in "$BIN_SRC"/*; do
  [ -f "$tool" ] || continue
  [ -x "$tool" ] || continue

  name="$(basename "$tool")"
  echo "    -> $name"

  if [ -w "$BIN_DST" ]; then
    install -m 0755 "$tool" "$BIN_DST/$name"
  else
    sudo install -m 0755 "$tool" "$BIN_DST/$name"
  fi
done

# -------------------------------------------------
# SSH sanity check (GitLab, non-fatal)
# -------------------------------------------------

echo
echo "==> Checking GitLab SSH access"

if ssh -T git@gitlab.com 2>&1 | grep -qi "Welcome to GitLab"; then
  echo "✅ SSH authentication OK"
else
  echo "⚠️  GitLab SSH not configured (HTTPS will still work)"
  echo "    To enable:"
  echo "      ssh-keygen -t ed25519"
  echo "      ssh-add --apple-use-keychain ~/.ssh/id_ed25519"
  echo "      pbcopy < ~/.ssh/id_ed25519.pub"
  echo "    Then add the key in GitLab → Preferences → SSH Keys"
fi

# -------------------------------------------------
# Summary
# -------------------------------------------------

echo
echo "==> Installation complete"
echo
echo "Installed CLI tools:"
ls "$BIN_SRC" | while read -r f; do
  [ -x "$BIN_SRC/$f" ] && echo "  - $f"
done
echo
echo "==> Done."
