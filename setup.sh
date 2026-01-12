#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE="neovim_config"

usage() {
  cat <<'USAGE'
Usage: ./setup.sh [--no-packages] [--no-fonts] [--no-link]

Sets up Neovim/Neovide/Ghostty dotfiles and optional dependencies.

Options:
  --no-packages   Skip installing packages (neovim/neovide/ghostty/etc)
  --no-fonts      Skip installing fonts
  --no-link       Skip symlinking dotfiles (stow)
  -h, --help      Show this help
USAGE
}

has_cmd() { command -v "$1" >/dev/null 2>&1; }

is_macos() { [[ "$(uname -s)" == "Darwin" ]]; }

INSTALL_PACKAGES=1
INSTALL_FONTS=1
LINK_CONFIGS=1

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-packages) INSTALL_PACKAGES=0 ;;
    --no-fonts) INSTALL_FONTS=0 ;;
    --no-link) LINK_CONFIGS=0 ;;
    -h|--help) usage; exit 0 ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
  shift
done

install_packages_macos() {
  if ! has_cmd brew; then
    echo "Homebrew not found. Install it from https://brew.sh and re-run."
    return
  fi
  brew install neovim neovide ghostty fzf ripgrep fd stow
}

install_fonts_macos() {
  if ! has_cmd brew; then
    echo "Homebrew not found. Skipping fonts. Install it from https://brew.sh"
    return
  fi
  brew tap homebrew/cask-fonts
  brew install --cask font-iosevka-nerd-font
}

link_configs() {
  if ! has_cmd stow; then
    echo "stow not found. Install it or re-run with --no-link."
    return 1
  fi
  stow -d "$ROOT" -t "$HOME" "$PACKAGE"
}

main() {
  if [[ $INSTALL_PACKAGES -eq 1 ]]; then
    if is_macos; then
      install_packages_macos
    else
      echo "Package install is only implemented for macOS right now."
    fi
  fi

  if [[ $INSTALL_FONTS -eq 1 ]]; then
    if is_macos; then
      install_fonts_macos
    else
      echo "Font install is only implemented for macOS right now."
    fi
  fi

  if [[ $LINK_CONFIGS -eq 1 ]]; then
    link_configs
  fi

  echo "Setup complete."
}

main
