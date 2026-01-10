# Neovim Keymaps (from this config)

Leader key: <Space>

Legend: n=normal, v=visual, x=visual, i=insert, t=terminal, o=operator-pending, s=select, c=command-line

## Core (config/keymaps.lua)
- n <Esc> -> clear search highlight
- n <leader>q -> open diagnostic loclist
- t <Esc><Esc> -> exit terminal mode
- n <C-h> -> focus left split
- n <C-l> -> focus right split
- n <C-j> -> focus lower split
- n <C-k> -> focus upper split
- n <leader>sv -> split window vertically
- n <leader>sh -> split window horizontally
- n <leader>wc -> close current window
- n <leader>wo -> close other windows
- n/i/v/o/t/s/x <Up>/<Down>/<Left>/<Right> -> disabled
- i/c/o/t/s/x <A-h>/<A-j>/<A-k>/<A-l> -> move cursor left/down/up/right

## Snacks (picker/terminal/etc)
- n <leader>lg -> LazyGit
- n <leader>un -> dismiss notifications
- n/t <C-/> -> toggle terminal
- n/t <C-_> -> toggle terminal
- n/t ]] -> next reference
- n/t [[ -> previous reference
- n <leader>ac -> Codex (toggle)
- n <leader>aC -> Codex (open in dir)
- n <leader>aw -> Codex (focus toggle)
- n <leader>aR -> Codex (restart)
- n <leader>aQ -> Codex (hide)
- n <leader>a- -> Codex (narrow)
- n <leader>a+ -> Codex (widen)
- n <leader>aU -> Codex CLI update (brew)
- n \ -> file explorer
- n <leader>ss -> smart find files
- n <leader><Space> -> buffers
- n <leader>sg -> grep
- n <leader>gG -> grep (prompt for dir)
- n <leader>sn -> find Neovim config files
- n <leader>sf -> find files
- n <leader>fF -> find files (prompt for dir)
- n <leader>sp -> pickers list
- n <leader>s. -> recent files
- n <leader>sk -> keymaps list
- n/x <leader>sw -> grep word
- n <leader>sr -> resume picker
- n <leader>sH -> help
- n <leader>sd -> diagnostics
- n <leader>s/ -> grep open buffers
- n <leader>/ -> fuzzy search in current buffer

## File managers
- n - -> open parent directory (Oil)
- n <leader>e -> toggle file tree (NvimTree)

## Which-key
- n <leader>? -> show buffer-local keymaps

## Commands
- :Codex [dir] -> open Codex CLI in a terminal (optional cwd)
- :CodexToggle -> toggle Codex window
- :CodexHide -> hide Codex window
- :CodexRestart -> restart Codex session
- :CodexWidth <0.2-0.8 | columns> -> set Codex window width
- :CodexUpdate -> update Codex CLI via Homebrew
- :ShowkeysToggle -> show key presses (showkeys)

## Codex (terminal buffer)
- t <CR> -> submit prompt (double-enter workaround)

## LSP (buffer-local; only when an LSP is attached)
- n <leader>rn -> rename symbol
- n/x <leader>ca -> code action
- n/x <leader>cd -> hover documentation
- n gr -> references
- n gI -> implementation
- n gd -> definition
- n gD -> declaration
- n gt -> type definition
- n <leader>ds -> document symbols
- n <leader>ws -> workspace symbols
- n <leader>th -> toggle inlay hints (if supported)

## Git (gitsigns; buffer-local)
- n ]c -> next hunk
- n [c -> previous hunk
- v <leader>hs -> stage hunk (selection)
- v <leader>hr -> reset hunk (selection)
- n <leader>hs -> stage hunk
- n <leader>hr -> reset hunk
- n <leader>hS -> stage buffer
- n <leader>hu -> undo stage hunk
- n <leader>hR -> reset buffer
- n <leader>hp -> preview hunk
- n <leader>hb -> blame line
- n <leader>hd -> diff against index
- n <leader>hD -> diff against last commit
- n <leader>tb -> toggle line blame
- n <leader>tD -> toggle deleted preview

## Treesitter
Incremental selection (n/v):
- <M-space> -> init/expand selection
- <Backspace> -> shrink selection

Textobjects (o/x):
- af / if -> function outer / inner
- ac / ic -> class outer / inner
- as -> local scope

Swap (n):
- <leader>xs -> swap parameter with next
- <leader>xS -> swap parameter with previous

## Formatting (conform.nvim)
- n/o/v <leader>f -> format buffer

## Completion (blink.cmp)
- Uses blink.cmp preset "default". See :h blink-cmp-config-keymap for details.
