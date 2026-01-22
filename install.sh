#!/usr/bin/env sh
set -e

REPO_HTTPS="https://github.com/FF4F00/FF4F00.git"
REPO_SSH="git@github.com:FF4F00/FF4F00.git"

WORKDIR="$HOME/.wrk_"
BIN_SRC="$WORKDIR/.bin"
BIN_DST="/usr/local/bin"

echo "==> FF4F00 installer"
echo "==> Workspace: $WORKDIR"
echo "==> CLI source: $BIN_SRC"
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

# --- validate workspace layout -----------------------------------

echo "==> Validating workspace layout"

if [ ! -d "$BIN_SRC" ]; then
  echo "❌ Required directory missing:"
  echo "   $BIN_SRC"
  echo "   Installer cannot continue."
  exit 1
fi

# --- install CLI binaries ----------------------------------------

echo "==> Installing CLI tools"

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
  echo "  ssh-keygen -t ed25519 -C \"you@example.com\""
  echo "  ssh-add --apple-use-keychain ~/.ssh/id_ed25519"
  echo "  pbcopy < ~/.ssh/id_ed25519.pub"
  echo "  https://github.com/settings/ssh/new"
fi

echo
echo "==> FF4F00 installed successfully"
echo "==> Workspace: $WORKDIR"
echo "==> CLI tools installed from:"
echo "     $BIN_SRC"
echo
echo "==> Done."
