#!/usr/bin/env sh
set -e

REPO_URL="https://github.com/FF4F00/FF4F00.git"
TARGET_DIR="$HOME/.wrk_"

echo "==> Installing FF4F00 into $TARGET_DIR"

if [ -d "$TARGET_DIR" ]; then
  echo "==> $TARGET_DIR already exists, skipping clone"
  exit 0
fi

cd "$HOME"

echo "==> Cloning repository"
git clone "$REPO_URL" FF4F00

echo "==> Renaming FF4F00 -> .wrk_"
mv FF4F00 ".wrk_"

echo "==> Done"
