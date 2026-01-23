#!/usr/bin/env sh
set -e

REPO_HTTPS="https://github.com/FF4F00/FF4F00.git"
REPO_SSH="git@github.com:FF4F00/FF4F00.git"

WORKDIR="$HOME/.wrk_"
PROJECTS_DIR="$HOME/.houston"
LOG_DIR="$HOME/.log"

BIN_SRC="$WORKDIR/.bin"
BIN_DST="/usr/local/bin"

echo "==> FF4F00 Platform Installer"
echo
echo "Platform (replaceable): $WORKDIR"
echo "Projects (persistent): $PROJECTS_DIR"
echo "Captain’s Log (persistent): $LOG_DIR"
echo

# -------------------------------------------------
# Preflight
# -------------------------------------------------

if ! command -v git >/dev/null 2>&1; then
  echo "❌ git is not installed."
  echo "   Please install git and re-run the installer."
  exit 1
fi

# -------------------------------------------------
# Ensure persistent user directories exist
# -------------------------------------------------

if [ ! -d "$PROJECTS_DIR" ]; then
  echo "==> Creating projects directory: $PROJECTS_DIR"
  mkdir -p "$PROJECTS_DIR"
else
  echo "==> Projects directory exists"
fi

if [ ! -d "$LOG_DIR" ]; then
  echo "==> Creating Captain’s Log directory: $LOG_DIR"
  mkdir -p "$LOG_DIR"
else
  echo "==> Captain’s Log directory exists"
fi

# -------------------------------------------------
# Replace platform (.wrk_)
# -------------------------------------------------

if [ -d "$WORKDIR" ]; then
  echo "==> Removing existing platform"
  rm -rf "$WORKDIR"
fi

echo "==> Installing latest platform"
git clone "$REPO_HTTPS" "$WORKDIR"

cd "$WORKDIR"

echo "==> Configuring git remote to use SSH"
git remote set-url origin "$REPO_SSH"

# -------------------------------------------------
# Validate platform layout
# -------------------------------------------------

if [ ! -d "$BIN_SRC" ]; then
  echo "❌ Required directory missing:"
  echo "   $BIN_SRC"
  echo "   Platform install is invalid."
  exit 1
fi

# -------------------------------------------------
# Install CLI binaries (launch, cfg, src, cl, etc.)
# -------------------------------------------------

echo "==> Installing CLI tools to $BIN_DST"

for tool in "$BIN_SRC"/*; do
  [ -f "$tool" ] || continue

  name="$(basename "$tool")"
  echo "    -> $name"

  if [ -w "$BIN_DST" ]; then
    install -m 0755 "$tool" "$BIN_DST/$name"
  else
    sudo install -m 0755 "$tool" "$BIN_DST/$name"
  fi
done

# -------------------------------------------------
# SSH sanity check (non-fatal)
# -------------------------------------------------

echo
echo "==> Checking GitHub SSH authentication"

if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
  echo "✅ GitHub SSH authentication detected."
else
  echo
  echo "⚠️  GitHub SSH authentication not detected."
  echo
  echo "To enable passwordless git push:"
  echo "  ssh-keygen -t ed25519 -C \"you@example.com\""
  echo "  ssh-add --apple-use-keychain ~/.ssh/id_ed25519"
  echo "  pbcopy < ~/.ssh/id_ed25519.pub"
  echo "  https://github.com/settings/ssh/new"
fi

# -------------------------------------------------
# Done
# -------------------------------------------------

echo
echo "==> Installation complete"
echo
echo "Platform:"
echo "  $WORKDIR"
echo
echo "Projects:"
echo "  $PROJECTS_DIR"
echo
echo "Captain’s Log:"
echo "  $LOG_DIR"
echo
echo "CLI tools installed:"
ls "$BIN_SRC" | sed 's/^/  - /'
echo
echo "==> Done."
