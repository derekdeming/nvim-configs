# nvim-configs
This repository contains my personal configuration files and scripts for setting up my Neovim/Neovide/Ghostty/Lazygit environment. It also includes a Codex CLI integration within Neovim powered by your ChatGPT subscription.

## Quick start (one-stop setup)

```bash
git clone https://github.com/derekdeming/nvim-configs.git
cd nvim-configs
./setup.sh
```

The setup script will:
- install Neovim/Neovide/Ghostty/Lazygit and common CLI tools (macOS only for now)
- install the Iosevka Nerd Font (macOS only for now)
- symlink the dotfiles into your home directory via `stow`

Options:
```bash
./setup.sh --no-packages   # skip installing apps/tools
./setup.sh --no-fonts      # skip font install
./setup.sh --no-link       # skip symlinking dotfiles
```

## Notes

- Theme: Neovim uses `gruvbox-material` (hard/original) and Ghostty is configured to match it.
- Font: Iosevka Nerd Font is the default for Neovide/Ghostty.
- If you use zoxide or tmuxifier, you can uncomment the relevant lines in `.zshrc`.

## Neovim keymap docs

- neovim_config/.config/nvim/KEYMAPS.md (all custom keymaps)
- neovim_config/.config/nvim/KEYMAP_PRACTICE.md (full practice guide)
- neovim_config/.config/nvim/KEYMAP_PRACTICE_PLUS.md (advanced drills)
- neovim_config/.config/nvim/KEYMAP_PRACTICE_ONE_PAGE.md (condensed one-page routine)

## Manual install (stow only)

If you already have dependencies installed and only want to link dotfiles:

```bash
stow -d dotfiles -t ~ nvim ghostty lazygit
```

## Contributing

If you have any suggestions or find any bugs, please open an issue or pull request on GitHub.

## License

This repository is released under the [MIT License](LICENSE).
