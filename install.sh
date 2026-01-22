#!/usr/bin/env sh
set -e

REPO_HTTPS="https://github.com/FF4F00/FF4F00.git"
REPO_SSH="git@github.com:FF4F00/FF4F00.git"
TARGET_DIR="$HOME/.wrk_"

echo "==> FF4F00 installer"
echo "==> Target directory: $TARGET_DIR"
echo

# --- preflight ----------------------------------------------------

if ! command -v git >/dev/null 2>&1; then
  echo "❌ git is not installed."
  echo "   Please install git and re-run the installer."
  exit 1
fi

# --- clone --------------------------------------------------------

if [ -d "$TARGET_DIR" ]; then
  echo "==> $TARGET_DIR already exists."
  echo "==> Skipping clone."
else
  echo "==> Cloning FF4F00 repository (HTTPS)"
  git clone "$REPO_HTTPS" "$TARGET_DIR"
fi

cd "$TARGET_DIR"

# --- switch remote to SSH ----------------------------------------

echo "==> Configuring git remote to use SSH"
git remote set-url origin "$REPO_SSH"

# --- ssh check ----------------------------------------------------

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
  echo
fi

echo
echo "==> FF4F00 installed at $TARGET_DIR"
echo "==> You can now:"
echo "     cd $TARGET_DIR"
echo "     git status"
echo
echo "==> Done."
