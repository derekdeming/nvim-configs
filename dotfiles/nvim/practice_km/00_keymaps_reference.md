# All Configured Keymaps (ordered: most common -> least common)

Legend: <leader> = Space, <C-x> = Ctrl+x, <M-x> = Alt/Option+x, <S-x> = Shift+x, <CR> = Enter

## 1) Core editing and movement (daily use)
- `J` (n) join line below to current line and keep cursor position
- `J` (v) move selected lines down
- `K` (v) move selected lines up
- `<C-d>` (n) half-page down, keep cursor centered
- `<C-u>` (n) half-page up, keep cursor centered
- `n` / `N` (n) next/prev search result, keep cursor centered
- `<` / `>` (v) indent left/right and keep selection
- `x` (n) delete character without yanking
- `<leader>p` (x) paste over selection without yanking
- `p` (v) paste over selection without yanking
- `<leader>d` (n/v) delete to black hole (does not yank)
- `<leader>Y` (n) yank line to system clipboard
- `<leader>s` (n) substitute word under cursor across file
- `<C-c>` (i) escape insert mode
- `<C-c>` (n) clear search highlight
- `<leader>f` (n) format via LSP
- `<leader>mp` (n/v) format with Conform (whole file or selection)
- `<leader>cw` (n) trim trailing whitespace (Mini Trailspace)
- `<leader><leader>` (n) run `:so` (source current file)
- `<leader>x` (n) chmod +x current file
- `Q` (n) disabled (noop)
- `<leader>u` (n) toggle Undotree

Mini Surround (custom mappings):
- `sa` add surround
- `ds` delete surround
- `sr` replace surround
- `sf` / `sF` find surround right/left
- `sh` highlight surround
- `sn` update number of lines to search
- Suffixes: `l` (last), `n` (next)

Mini Split/Join:
- `sj` (n/x) join arguments
- `sk` (n/x) split arguments

## 2) Windows, splits, tabs, buffers
- `<leader>sv` (n) split window vertically
- `<leader>sh` (n) split window horizontally
- `<leader>se` (n) equalize split sizes
- `<leader>sx` (n) close current split
- `<leader>sm` (n) maximize/minimize split

Tabs:
- `<leader>to` (n) new tab
- `<leader>tx` (n) close tab
- `<leader>tn` (n) next tab
- `<leader>tp` (n) previous tab
- `<leader>tf` (n) open current buffer in new tab

Tmux/Vim split navigation (vim-tmux-navigator):
- `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` (n/t) move left/down/up/right across splits/tmux
- `<C-\>` (n/t) jump to previous split/tmux pane

Folds (nvim-ufo):
- `zR` (n) open all folds
- `zM` (n) close all folds

## 3) File navigation and project search
Snacks pickers:
- `<leader>pf` find files
- `<leader>pc` find config files (lua dir)
- `<leader>ps` grep (live)
- `<leader>pws` grep word / selection
- `<leader>pk` search keymaps
- `<leader>rN` rename current file (Snacks rename)
- `<leader>dB` delete/close buffer (Snacks bufdelete)
- `<leader>gbr` git branches
- `<leader>th` themes picker
- `<leader>vh` help pages

Telescope:
- `<leader>pr` recent files
- `<leader>pWs` grep current WORD under cursor
- `<leader>ths` themes (telescope themes extension)
- In Telescope insert mode: `<C-j>` / `<C-k>` move selection down/up

File explorers:
- `-` (n) open parent directory in Oil
- `<leader>-` (n) toggle Oil float
- Oil buffer: `<M-h>` open selection in split, `q` close Oil
- `<leader>ee` (n) toggle Mini Files
- `<leader>ef` (n) open Mini Files at current file
- Mini Files buffer: `<CR>` or `L` go in, `-` or `H` go out
- NvimTree (plugin disabled): `<leader>ee` toggle, `<leader>ef` find file, `<leader>ec` collapse, `<leader>er` refresh

Harpoon:
- `<leader>a` add current file
- `<C-e>` toggle Harpoon quick menu
- `<C-y>` / `<C-i>` / `<C-n>` / `<C-s>` jump to slots 1-4
- `<C-S-P>` / `<C-S-N>` previous/next Harpoon item

Sessions and worktrees:
- `<leader>ws` save session for cwd
- `<leader>wr` restore session for cwd
- `<leader>wl` list git worktrees
- `<leader>wc` create git worktree

Misc navigation:
- `<leader>fp` copy current file path to clipboard
- `<C-f>` open tmux-sessionizer

## 4) LSP, diagnostics, completion
LSP (buffer-local on LspAttach):
- `gR` references
- `gD` declaration
- `gd` definitions
- `gi` implementations
- `gt` type definitions
- `K` hover docs
- `<leader>vca` code action (n/v)
- `<leader>rn` rename
- `<leader>D` diagnostics (current buffer via Telescope)
- `<leader>d` diagnostics float (note conflict with delete mapping)
- `<leader>rs` restart LSP
- `<C-h>` (i) signature help

Diagnostics toggle:
- `<leader>lx` toggle virtual text + underline diagnostics

Linting:
- `<leader>l` trigger lint for current file

Trouble:
- `<leader>xw` workspace diagnostics
- `<leader>xd` document diagnostics
- `<leader>xq` quickfix list
- `<leader>xl` location list
- `<leader>xt` todo list

Todo comments:
- `]t` next todo
- `[t` previous todo
- `<leader>pt` todo picker (all)
- `<leader>pT` todo picker (filtered)

Completion (nvim-cmp, insert/select mode):
- `<C-e>` abort completion
- `<C-d>` close docs window
- `<C-f>` / `<C-b>` scroll docs down/up
- `<C-j>` / `<C-k>` select next/prev item
- `<C-n>` / `<C-p>` select next/prev item
- `<Down>` / `<Up>` select next/prev item
- `<C-y>` confirm selected item when menu is visible
- `<CR>` confirm selected item when menu is visible
- `<Tab>` next item / expand or jump snippet / insert indent
- `<S-Tab>` prev item / jump snippet back / smart backspace

Emmet (HTML/JSX/TSX):
- `<leader>xe` wrap selection with abbreviation

## 5) Git
Fugitive:
- `<leader>gg` open Git status (fugitive)
- Fugitive buffer only: `<leader>P` push, `<leader>p` pull --rebase, `<leader>t` push -u origin ...

Gitsigns (buffer-local):
- `]h` next hunk
- `[h` previous hunk
- `<leader>gs` stage hunk (n/v)
- `<leader>gr` reset hunk (n/v)
- `<leader>gS` stage buffer
- `<leader>gR` reset buffer
- `<leader>gu` undo stage hunk
- `<leader>gp` preview hunk
- `<leader>gbl` blame line (full)
- `<leader>gB` toggle line blame
- `<leader>gd` diff this
- `<leader>gD` diff this ~
- `ih` (o/x) text object for hunk

Snacks git:
- `<leader>lg` open lazygit
- `<leader>gl` lazygit logs

Review.nvim (code review annotations):
- `<leader>R` open review diff
- `<leader>RC` review commits (picker)
- `:Review` / `:Review open` open review diff
- `:Review commits` pick commits to review
- `:Review close` close + export to clipboard
- `:Review export` export to clipboard
- `:Review preview` preview export in split
- `:Review sidekick` send to sidekick.nvim
- `:Review list` list all comments
- `:Review clear` clear all comments
- `:Review toggle` toggle readonly/edit mode

Review.nvim diff view (readonly mode):
- `i` add comment (choose type in popup)
- `d` delete comment at cursor
- `e` edit comment at cursor
- `c` list all comments
- `f` toggle file panel
- `R` toggle readonly/edit mode
- `<Tab>` / `<S-Tab>` next/prev file
- `]n` / `[n` next/prev comment
- `C` export to clipboard + preview
- `S` send comments to sidekick.nvim
- `<C-r>` clear all comments
- `q` close and export

Review.nvim comment popup:
- `<CR>` insert newline
- `<C-s>` submit comment
- `<Tab>` cycle comment type
- `<Esc>` / `q` cancel

Review.nvim diff view (edit mode):
- `<leader>cn` / `<leader>cs` / `<leader>ci` / `<leader>cp` add Note/Suggestion/Issue/Praise
- `<leader>cd` delete comment
- `<leader>ce` edit comment

## 6) Debugging
- `<leader>db` toggle breakpoint
- `<leader>dc` continue

## 7) Codex AI
Normal mode:
- `<leader>cc` toggle Codex window
- `<leader>cC` open Codex in a directory
- `<leader>cW` focus toggle (Codex <-> host)
- `<leader>cQ` hide Codex
- `<leader>cR` restart Codex
- `<leader>c-` / `<leader>c+` resize Codex
- `<leader>cU` update Codex CLI (brew)

Codex terminal mode:
- `<M-h>` / `<M-j>` / `<M-k>` / `<M-l>` window left/down/up/right
- `<M-Left>` / `<M-Down>` / `<M-Up>` / `<M-Right>` window nav (arrows)
- `<M-w>` focus toggle
- `<M-q>` hide Codex
- `<M-r>` restart Codex

## 8) Terminals
- `<space>c/` (n/t) toggle floating terminal
- `<Esc><Esc>` (t) exit terminal mode to normal mode

## 9) Markdown-only (ftplugin markdown)
Visual mode (selected lines):
- `tn` toggle numbers
- `tb` toggle bullets
- `tc` toggle checkboxes
- `tt` toggle task state
- `tl` smart list toggle

Normal mode (current line):
- `tn` toggle numbers
- `tb` toggle bullets
- `tc` toggle checkboxes
- `tt` toggle task state
- `tl` smart list toggle
- `<leader>tc` mark all tasks done
- `<leader>tu` mark all tasks undone
- `<leader>h1`..`<leader>h6` toggle heading levels

## Notes / Conflicts
- `<leader>d` is delete-to-blackhole globally, but becomes diagnostics float in LSP buffers.
- `<leader>ee` / `<leader>ef` are from Mini Files. NvimTree uses the same keys but is disabled.
- `<C-h/j/k/l>` are used by vim-tmux-navigator in normal/terminal; `<C-h>` also maps to LSP signature help in insert.
