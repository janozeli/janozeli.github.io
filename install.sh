#!/usr/bin/env bash
set -e

REPO="https://github.com/janozeli/dotfiles-arch.git"
BASE="https://raw.githubusercontent.com/janozeli/dotfiles-arch/main"

case "${1:-}" in
    arch-manual)
        curl -fsSL "$BASE/src/archinstall-manual.json" -o archinstall.json
        archinstall --config archinstall.json
        ;;
    arch-auto)
        curl -fsSL "$BASE/src/archinstall-auto.json" -o archinstall.json
        archinstall --config archinstall.json
        ;;
    dotfiles)
        git clone "$REPO" "$HOME/dotfiles-arch"
        cd "$HOME/dotfiles-arch"
        bash install.sh
        ;;
    *)
        echo "Uso: curl -fsSL janozeli.github.io/install.sh | bash -s <comando>"
        echo ""
        echo "Comandos:"
        echo "  arch-manual   Particionamento manual"
        echo "  arch-auto     Particionamento automático"
        echo "  dotfiles      Clona e instala dotfiles"
        ;;
esac
