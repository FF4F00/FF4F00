#!/usr/bin/env sh
set -e

REPO_HTTPS="https://github.com/FF4F00/FF4F00.git"
REPO_SSH="git@github.com:FF4F00/FF4F00.git"
WORKDIR="$HOME/.wrk_"
BIN_SRC="$WORKDIR/bin"
BIN_DST="/usr/local/bin"

echo "==> FF4F00 installer"
echo "==> Workspace: $WORKDIR"
echo "==> CLI target: $BIN_DST"
echo

# --- preflight ----------------------------------------------------

if ! command -v git >/dev/null 2>&1; then
  echo "❌ git is not installed."
  echo "   Please install git and re-run the installer."
  exit 1
fi

# --- clone --------------------------------------------------------

if [ -d "$WORKDIR" ]; then
  echo "==> $WORKDIR already exists."
  echo "==> Skipping clone."
else
  echo "==> Cloning FF4F00 repository (HTTPS)"
  git clone "$REPO_HTTPS" "$WORKDIR"
fi

cd "$WORKDIR"

# --- switch remote to SSH ----------------------------------------

echo "==> Configuring git remote to use SSH"
git remote set-url origin "$REPO_SSH"

# --- install CLI binaries ----------------------------------------

if [ -d "$BIN_SRC" ]; then
  echo "==> Installing CLI tools to $BIN_DST"

  for tool in "$BIN_SRC"/*; do
    [ -f "$tool" ] || continue

    name="$(basename "$tool")"

    echo "    -> $name"
    chmod +x "$tool"

    if [ -w "$BIN_DST" ]; then
      cp "$tool" "$BIN_DST/$name"
    else
      sudo cp "$tool" "$BIN_DST/$name"
    fi
  done
else
  echo "⚠️  No bin/ directory found at $BIN_SRC"
  echo "   Skipping CLI installation."
fi

# --- ssh check ----------------------------------------------------

echo
echo "==> Checking GitHub SSH authentication"

if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
  echo "✅ GitHub SSH authentication detected."
else
  echo
  echo "⚠️  GitHub SSH authentication not detected."
  echo
  echo "To enable passwordless git push:"
  echo "  1. Generate an SSH key:"
  echo "     ssh-keygen -t ed25519 -C \"you@example.com\""
  echo
  echo "  2. Add the key to the agent:"
  echo "     ssh-add --apple-use-keychain ~/.ssh/id_ed25519"
  echo
  echo "  3. Add the public key to GitHub:"
  echo "     pbcopy < ~/.ssh/id_ed25519.pub"
  echo
  echo "     https://github.com/settings/ssh/new"
fi

echo
echo "==> FF4F00 installed"
echo "==> Workspace: $WORKDIR"
echo "==> CLI tools available globally:"
if [ -d "$BIN_SRC" ]; then
  ls "$BIN_SRC" | sed 's/^/     - /'
fi
echo
echo "==> Done."
