#!/usr/bin/env bash
set -e

REPO="https://github.com/janozeli/dotfiles-arch.git"
DEST="$HOME/dotfiles-arch"

git clone "$REPO" "$DEST"
cd "$DEST"
bash install.sh
