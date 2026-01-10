# nvim-configs
This repository contains my personal configuration files and scripts for optimizing my development environment. Includes settings for Bash, Vim, ZSH, and more. Easily back up, synchronize, and customize your environment. This also includes a Codex CLI integration within your neovim env powered by your chatgpt subscription. 

## Usage

You Need to have Git , FZF, Stow and Zsh installed on your system.

if you have zoxide installed, you can uncomment the zoxide line in the .zshrc file.

and if you have tmuxifier installed, you can uncomment the tmuxifier line in the .zshrc file.

## Neovim keymap docs

- neovim_config/.config/nvim/KEYMAPS.md (all custom keymaps)
- neovim_config/.config/nvim/KEYMAP_PRACTICE.md (full practice guide)
- neovim_config/.config/nvim/KEYMAP_PRACTICE_PLUS.md (advanced drills)
- neovim_config/.config/nvim/KEYMAP_PRACTICE_ONE_PAGE.md (condensed one-page routine)

## Installation

To use this repository, simply clone it to your local machine. 

```bash
git clone https://github.com/derekdeming/nvim-configs.git
```

Once cloned, navigate to the desired directory.

```bash
cd nvim-configs
```

Run stow to install the dotfiles.

```bash
stow nvim -t ~/.config/nvim
```

You are now ready to use the dotfiles in your environment.

## Contributing

If you have any suggestions or find any bugs, please open an issue or pull request on GitHub.

## License

This repository is released under the [MIT License](LICENSE).
