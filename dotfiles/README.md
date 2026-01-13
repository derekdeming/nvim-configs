# Dotfiles (stow)

This repo is laid out for GNU Stow. Clone it, then run the setup script to link configs into your home directory.

## Quick start

```bash
./setup.sh
```

By default, the script removes any *existing symlinks* in `~/.config` that would conflict (useful when you already have old stow links).

## Options

```bash
./setup.sh --no-unlink-symlinks   # keep existing symlinks; may conflict
./setup.sh --backup              # move conflicts into .backup/<timestamp>/
```

You can pass any normal stow flags through to the script, e.g.:

```bash
./setup.sh --restow
```

## Environment

- `STOW_TARGET` — target directory (default: `$HOME`)
- `PACKAGES` — space-separated package list to stow (default: all packages)

Example:

```bash
PACKAGES="nvim tmux" ./setup.sh
```

## Packages

- `ghostty`
- `lazygit`
- `nvim`
- `rofi`
- `starship`
- `sway`
- `tmux`
- `waybar`
- `yazi`
- `zsh`
