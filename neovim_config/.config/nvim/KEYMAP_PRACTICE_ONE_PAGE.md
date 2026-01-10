# Neovim Keymap Practice — One Page

Purpose: a fast daily routine + compact reference. Keep this open while practicing.

Leader key: Space (press Spacebar)
Legend: n=normal, v=visual, x=visual, i=insert, t=terminal, o=operator-pending, s=select, c=command-line

## Daily 10-minute routine
1) Core (2 min): `Ctrl+h`, `Ctrl+j`, `Ctrl+k`, `Ctrl+l`, then `Space, then s, then v`, `Space, then s, then h`, `Space, then w, then c`, `Space, then w, then o`, then `Esc`
2) Search (2 min): `<leader>ss` (Space, then s, then s), `<leader>sf` (Space, then s, then f), `<leader>sg` (Space, then s, then g), `<leader>/` (Space, then /), `<leader>sr` (Space, then s, then r)
3) LSP (2 min): `gd` (g then d), `gr` (g then r), `gt` (g then t), `<leader>ds` (Space, then d, then s), `<leader>ca` (Space, then c, then a)
4) Git (2 min): `]c` (right bracket, then c), `[c` (left bracket, then c), `<leader>hp` (Space, then h, then p), `<leader>hs` (Space, then h, then s), `<leader>hr` (Space, then h, then r)
5) Treesitter (2 min): `<M-space>` (Alt/Option+Space) x3, `<Backspace>` (Backspace) x2, `vaf` (v then a then f), `vif` (v then i then f), `<leader>xs` (Space, then x, then s)

## Keymap quick reference (compact)
Core:
- n `<Esc>` (press Esc) clear search
- n `<leader>q` (Space, then q) diagnostics loclist
- t `<Esc><Esc>` (Esc, then Esc) exit terminal mode
- n `Ctrl+h`, `Ctrl+j`, `Ctrl+k`, `Ctrl+l` window focus
- n `<leader>sv` (Space, then s, then v) `<leader>sh` (Space, then s, then h) `<leader>wc` (Space, then w, then c) `<leader>wo` (Space, then w, then o) split/close
- n/i/v/o/t/s/x `Up Arrow`, `Down Arrow`, `Left Arrow`, `Right Arrow` disabled
- i/c/o/t/s/x `Alt/Option+h`, `Alt/Option+j`, `Alt/Option+k`, `Alt/Option+l` cursor move

Files and pickers:
- n `\` (Backslash key) Snacks explorer
- n `-` (Minus key) Oil parent dir
- n `<leader>e` (Space, then e) NvimTree toggle
- n `<leader><Space>` (Space, then Space) buffers
- n `<leader>ss` (Space, then s, then s) smart files
- n `<leader>sf` (Space, then s, then f) files
- n `<leader>fF` (Space, then f, then Shift+f / F) files in dir
- n `<leader>sn` (Space, then s, then n) nvim files
- n `<leader>s.` (Space, then s, then .) recent
- n `<leader>sp` (Space, then s, then p) pickers
- n `<leader>sk` (Space, then s, then k) keymaps
- n `<leader>sH` (Space, then s, then Shift+h / H) help
- n `<leader>sg` (Space, then s, then g) grep
- n `<leader>gG` (Space, then g, then Shift+g / G) grep in dir
- n/x `<leader>sw` (Space, then s, then w) grep word
- n `<leader>s/` (Space, then s, then /) grep buffers
- n `<leader>/` (Space, then /) buffer search
- n `<leader>sr` (Space, then s, then r) resume

Diagnostics/utility:
- n `<leader>sd` (Space, then s, then d) diagnostics picker
- n `<leader>un` (Space, then u, then n) dismiss notifications
- n `<leader>?` (Space, then Shift+/ / ?) which-key (buffer local)
- :ShowkeysToggle show key presses

LSP:
- n `<leader>rn` (Space, then r, then n) rename
- n/x `<leader>ca` (Space, then c, then a) code action
- n/x `<leader>cd` (Space, then c, then d) hover docs
- n `gd` (g then d) `gD` (g then Shift+d / D) `gI` (g then Shift+i / I) `gr` (g then r) `gt` (g then t)
- n `<leader>ds` (Space, then d, then s) doc symbols
- n `<leader>ws` (Space, then w, then s) workspace symbols
- n `<leader>th` (Space, then t, then h) inlay hints

Git:
- n `]c` (right bracket, then c) `[c` (left bracket, then c) hunk nav
- v `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r) stage/reset selection
- n `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r) stage/reset
- n `<leader>hS` (Space, then h, then Shift+s / S) `<leader>hu` (Space, then h, then u) `<leader>hR` (Space, then h, then Shift+r / R)
- n `<leader>hp` (Space, then h, then p) `<leader>hb` (Space, then h, then b) `<leader>hd` (Space, then h, then d) `<leader>hD` (Space, then h, then Shift+d / D)
- n `<leader>tb` (Space, then t, then b) `<leader>tD` (Space, then t, then Shift+d / D)

Treesitter:
- n/v `<M-space>` (Alt/Option+Space) expand
- n/v `<Backspace>` (Backspace) shrink
- o/x `af` (a then f) `if` (i then f) `ac` (a then c) `ic` (i then c) `as` (a then s)
- n `<leader>xs` (Space, then x, then s) `<leader>xS` (Space, then x, then Shift+s / S)

Formatting:
- n/o/v `<leader>f` (Space, then f) format buffer

Completion (insert mode):
- i `<C-Space>` (Ctrl+Space) open menu/docs
- i `<C-n>` (Ctrl+n) `<C-p>` (Ctrl+p) or `Up Arrow`, `Down Arrow`
- i `<C-e>` (Ctrl+e) hide menu
- i `<C-k>` (Ctrl+k) signature
- i `<Tab>` (Tab) `<S-Tab>` (Shift+Tab) snippet jump
- i `<Enter>` (Enter) accept

Terminal and tools:
- n/t `<C-/>` (Ctrl+/) `<C-_>` (Ctrl+_ / underscore) toggle terminal
- n `<leader>lg` (Space, then l, then g) LazyGit
- n `<leader>ac` (Space, then a, then c) `<leader>aC` (Space, then a, then Shift+c / C) `<leader>aw` (Space, then a, then w) `<leader>aR` (Space, then a, then Shift+r / R) `<leader>aQ` (Space, then a, then Shift+q / Q) `<leader>a-` (Space, then a, then -) `<leader>a+` (Space, then a, then Shift+= / +) `<leader>aU` (Space, then a, then Shift+u / U) Codex
- t `<CR>` (Enter) submit Codex prompt
- n/t `]]` (right bracket, right bracket) `[[` (left bracket, left bracket) next/prev reference
