# Neovim Keymap Practice Guide

Goal: build fast, reliable muscle memory for every custom keymap in this config.

Leader key: Space (press Spacebar)
Legend: n=normal, v=visual, x=visual, i=insert, t=terminal, o=operator-pending, s=select, c=command-line

## Setup (2 min)
- Open a real project (this repo works).
- Create a scratch buffer: `:enew` then `:file practice.txt`.
- For LSP drills: open a file with LSP attached (Lua, TS, Rust, etc).
- For Git drills: make at least one modified file in a git repo.
- For Treesitter drills: open a file with functions/classes and parameters.
- Optional: `:ShowkeysToggle` to visualize keystrokes.

## How to practice
- Pass 1 (Accuracy): slow reps, say keys out loud.
- Pass 2 (Fluency): 5 clean reps per drill.
- Pass 3 (Speed): timed sets, track errors.

Suggested schedule:
- Week 1: 15-20 min/day (Core + Search + Files)
- Week 2: 20-30 min/day (Add LSP + Git + Treesitter + Completion + Codex)
- Maintenance: 10 min, 3x/week (mixed drills)

## Drill pack A: Core movement and windows
Keymaps covered:
- n `<Esc>` (press Esc) (clear search highlight)
- n `<C-h>` (Ctrl+h) `<C-j>` (Ctrl+j) `<C-k>` (Ctrl+k) `<C-l>` (Ctrl+l) (move focus)
- n `<leader>sv` (Space, then s, then v) `<leader>sh` (Space, then s, then h) `<leader>wc` (Space, then w, then c) `<leader>wo` (Space, then w, then o) (splits and window control)
- t `<Esc><Esc>` (Esc, then Esc) (exit terminal mode)
- n/v/x `<Up>` (Up Arrow) `<Down>` (Down Arrow) `<Left>` (Left Arrow) `<Right>` (Right Arrow) (disabled)

Drills:
1) Clear search highlight
   - Do: type `/test`, press Enter, then press Esc
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5 [ ]6 [ ]7 [ ]8 [ ]9 [ ]10

2) Window grid navigation
   - Setup: `:vsplit` then `:split` twice to make 4 panes
   - Do: cycle `Ctrl+h`, `Ctrl+j`, `Ctrl+k`, `Ctrl+l` without using the mouse
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Split management
   - Do: `<leader>sv` (Space, then s, then v), `<leader>sh` (Space, then s, then h), then close with `<leader>wc` (Space, then w, then c)
   - Do: create 3 splits, then `<leader>wo` (Space, then w, then o)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

4) Arrow key discipline
   - Do: press each arrow key in normal/visual mode (should do nothing)
   - Then move with `h`, `j`, `k`, `l`
   - Reps: [ ]1 [ ]2 [ ]3

5) Terminal escape
   - Do: open a terminal with `<C-/>` (Ctrl+/), type `ls`, then `<Esc><Esc>` (Esc, then Esc)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Drill pack B: File explorers and buffers
Keymaps covered:
- n `\` (Backslash key) (Snacks file explorer)
- n `-` (Minus key) (Oil open parent directory)
- n `<leader>e` (Space, then e) (NvimTree toggle)
- n `<leader><Space>` (Space, then Space) (buffers picker)
- n `]b` (right bracket, then b) (next buffer)
- n `[b` (left bracket, then b) (previous buffer)
- n `<leader>bd` (Space, then b, then d) (delete buffer)

Drills:
1) Explorer circuit
   - Do: `\` (Backslash key) open explorer, open a file, then `q` to close
   - Do: `-` (Minus key) open parent directory, open a file, then `q` to close
   - Do: `<leader>e` (Space, then e) toggle NvimTree on/off
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Buffer loop
   - Open 3 files
   - Do: `<leader><Space>` (Space, then Space) to switch buffers and return to start
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Buffer navigation
   - Open 3 files
   - Do: `]b` (right bracket, then b) and `[b` (left bracket, then b) to cycle
   - Do: `<leader>bd` (Space, then b, then d) to delete the current buffer
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Drill pack C: Search and pickers
Keymaps covered:
- n `<leader>ss` (Space, then s, then s) (smart find files)
- n `<leader>sf` (Space, then s, then f) (find files)
- n `<leader>fF` (Space, then f, then Shift+f / F) (find files in dir)
- n `<leader>sn` (Space, then s, then n) (find Neovim config files)
- n `<leader>s.` (Space, then s, then .) (recent files)
- n `<leader>sp` (Space, then s, then p) (pickers list)
- n `<leader>sk` (Space, then s, then k) (keymaps list)
- n `<leader>sH` (Space, then s, then Shift+h / H) (help)
- n `<leader>sg` (Space, then s, then g) (grep)
- n `<leader>gG` (Space, then g, then Shift+g / G) (grep in dir)
- n/x `<leader>sw` (Space, then s, then w) (grep word)
- n `<leader>s/` (Space, then s, then /) (grep open buffers)
- n `<leader>/` (Space, then /) (fuzzy search in buffer)
- n `<leader>sr` (Space, then s, then r) (resume picker)

Drills:
1) File find ladder
   - Do: `<leader>ss` (Space, then s, then s), then `<leader>sf` (Space, then s, then f), then `<leader>fF` (Space, then f, then Shift+f / F)
   - Do: `<leader>sn` (Space, then s, then n) (open any config file)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Recent, pickers, and keymaps
   - Do: `<leader>s.` (Space, then s, then .) open a recent file
   - Do: `<leader>sp` (Space, then s, then p) then pick any picker
   - Do: `<leader>sk` (Space, then s, then k) and search for "Codex"
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Help lookup
   - Do: `<leader>sH` (Space, then s, then Shift+h / H) and open a help topic (e.g. "help")
   - Reps: [ ]1 [ ]2 [ ]3

4) Grep circuit
   - Do: `<leader>sg` (Space, then s, then g) search a term, open a result
   - Do: `<leader>gG` (Space, then g, then Shift+g / G) pick a dir, search a term
   - Do: `<leader>sw` (Space, then s, then w) on a word under cursor
   - Do: `<leader>s/` (Space, then s, then /) to search open buffers
   - Do: `<leader>/` (Space, then /) to fuzzy-search lines in current buffer
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

5) Resume picker
   - Do: run any picker, close it, then `<leader>sr` (Space, then s, then r) to resume
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Drill pack D: Diagnostics and notifications
Keymaps covered:
- n `<leader>q` (Space, then q) (open diagnostic loclist)
- n `<leader>sd` (Space, then s, then d) (diagnostics picker)
- n `<leader>un` (Space, then u, then n) (dismiss notifications)
- n `<leader>?` (Space, then Shift+/ / ?) (which-key buffer local keymaps)

Drills:
1) Diagnostics
   - In a file with an LSP error, use `<leader>sd` (Space, then s, then d) and open an item
   - Then use `<leader>q` (Space, then q) to open the loclist
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Which-key
   - Press `<leader>?` (Space, then Shift+/ / ?) and scan buffer-local keymaps
   - Reps: [ ]1 [ ]2 [ ]3

3) Notifications
   - Trigger any notification (e.g. open a file with a warning), then `<leader>un` (Space, then u, then n)
   - Reps: [ ]1 [ ]2 [ ]3

## Drill pack E: LSP navigation and actions
Keymaps covered:
- n `<leader>rn` (Space, then r, then n) (rename)
- n/x `<leader>ca` (Space, then c, then a) (code action)
- n/x `<leader>cd` (Space, then c, then d) (hover docs)
- n `gd` (g then d) `gD` (g then Shift+d / D) `gI` (g then Shift+i / I) `gr` (g then r) `gt` (g then t) (goto)
- n `<leader>ds` (Space, then d, then s) (document symbols)
- n `<leader>ws` (Space, then w, then s) (workspace symbols)
- n `<leader>th` (Space, then t, then h) (toggle inlay hints, if supported)

Drills:
1) Goto sweep
   - Do: `gd` (g then d), `gD` (g then Shift+d / D), `gI` (g then Shift+i / I), `gr` (g then r), `gt` (g then t) on the symbol under cursor
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Symbols search
   - Do: `<leader>ds` (Space, then d, then s) then `<leader>ws` (Space, then w, then s)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Rename and actions
   - Do: `<leader>rn` (Space, then r, then n) rename a local symbol
   - Do: `<leader>ca` (Space, then c, then a) on a warning or TODO
   - Do: `<leader>cd` (Space, then c, then d) to view docs
   - Reps: [ ]1 [ ]2 [ ]3

4) Inlay hints toggle
   - Do: `<leader>th` (Space, then t, then h) on/off
   - Reps: [ ]1 [ ]2 [ ]3

## Drill pack F: Git (gitsigns)
Keymaps covered:
- n `]c` (right bracket, then c) `[c` (left bracket, then c) (next/prev hunk)
- v `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r) (stage/reset hunk selection)
- n `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r) (stage/reset hunk)
- n `<leader>hS` (Space, then h, then Shift+s / S) `<leader>hu` (Space, then h, then u) `<leader>hR` (Space, then h, then Shift+r / R) (stage buffer/undo stage/reset buffer)
- n `<leader>hp` (Space, then h, then p) `<leader>hb` (Space, then h, then b) `<leader>hd` (Space, then h, then d) `<leader>hD` (Space, then h, then Shift+d / D) (preview/blame/diff)
- n `<leader>tb` (Space, then t, then b) `<leader>tD` (Space, then t, then Shift+d / D) (toggle blame/deleted preview)

Drills:
1) Hunk navigation
   - Do: `]c` (right bracket, then c) and `[c` (left bracket, then c) through all hunks in a file
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Stage/reset basics
   - Do: `<leader>hs` (Space, then h, then s), `<leader>hr` (Space, then h, then r), `<leader>hu` (Space, then h, then u)
   - Do: `<leader>hS` (Space, then h, then Shift+s / S) then `<leader>hR` (Space, then h, then Shift+r / R)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Visual hunk actions
   - Do: select a hunk in visual mode, `<leader>hs` (Space, then h, then s) then `<leader>hr` (Space, then h, then r)
   - Reps: [ ]1 [ ]2 [ ]3

4) Diff and blame
   - Do: `<leader>hp` (Space, then h, then p), `<leader>hb` (Space, then h, then b), `<leader>hd` (Space, then h, then d), `<leader>hD` (Space, then h, then Shift+d / D)
   - Do: `<leader>tb` (Space, then t, then b) toggle line blame on/off
   - Do: `<leader>tD` (Space, then t, then Shift+d / D) toggle deleted preview on/off
   - Reps: [ ]1 [ ]2 [ ]3

## Drill pack G: Treesitter
Keymaps covered:
- n/v `<M-space>` (Alt/Option+Space) (init/expand selection)
- n/v `<Backspace>` (Backspace) (shrink selection)
- o/x `af` (a then f) `if` (i then f) `ac` (a then c) `ic` (i then c) `as` (a then s) (textobjects)
- n `<leader>xs` (Space, then x, then s) `<leader>xS` (Space, then x, then Shift+s / S) (swap parameters)

Drills:
1) Incremental selection
   - Do: `<M-space>` (Alt/Option+Space) expand 5 times, `<Backspace>` (Backspace) shrink 5 times
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Textobject sweep
   - Do: `vaf` (v then a then f) `vif` (v then i then f) `vac` (v then a then c) `vic` (v then i then c) `vas` (v then a then s) in a file with functions/classes
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Swap parameters
   - Do: place cursor on a parameter, `<leader>xs` (Space, then x, then s) then `<leader>xS` (Space, then x, then Shift+s / S)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Drill pack H: Formatting
Keymaps covered:
- n/o/v `<leader>f` (Space, then f) (format buffer)

Drills:
1) Format loop
   - Do: open a file, make a messy edit, run `<leader>f` (Space, then f)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Drill pack I: Completion (blink.cmp, insert mode)
Keymaps covered:
- i `<C-Space>` (Ctrl+Space) (open menu or docs)
- i `<C-n>` (Ctrl+n) `<C-p>` (Ctrl+p) or `<Up>` (Up Arrow) `<Down>` (Down Arrow) (next/prev item)
- i `<C-e>` (Ctrl+e) (hide menu)
- i `<C-k>` (Ctrl+k) (toggle signature help)
- i `<Tab>` (Tab) `<S-Tab>` (Shift+Tab) (snippet jump left/right)
- i `<Enter>` (Enter) (accept completion; fallback)

Drills:
1) Completion menu
   - Do: type a few letters, `<C-Space>` (Ctrl+Space) to open, then `Ctrl+n` / `Ctrl+p` to navigate
   - Accept with `<Enter>` (Enter), then hide with `<C-e>` (Ctrl+e)
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Signature help
   - Do: type a function call and press `<C-k>` (Ctrl+k)
   - Reps: [ ]1 [ ]2 [ ]3

3) Snippet jump
   - Do: expand a snippet and move with `<Tab>` (Tab)/`<S-Tab>` (Shift+Tab)
   - Reps: [ ]1 [ ]2 [ ]3

## Drill pack J: Terminal, LazyGit, and Codex
Keymaps covered:
- n/t `<C-/>` (Ctrl+/) and n/t `<C-_>` (Ctrl+_ / underscore) (toggle terminal)
- n `<leader>lg` (Space, then l, then g) (LazyGit)
- n `<leader>ac` (Space, then a, then c) `<leader>aC` (Space, then a, then Shift+c / C) `<leader>aw` (Space, then a, then w) `<leader>aR` (Space, then a, then Shift+r / R) `<leader>aQ` (Space, then a, then Shift+q / Q) `<leader>a-` (Space, then a, then -) `<leader>a+` (Space, then a, then Shift+= / +) `<leader>aU` (Space, then a, then Shift+u / U) (Codex)
- t `<CR>` (Enter) (Codex terminal submits double-enter)
- t `<M-h>` `<M-j>` `<M-k>` `<M-l>` (Alt/Option+hjkl) (Codex terminal window focus)
- n/t `]]` (right bracket, right bracket) `[[` (left bracket, left bracket) (next/prev reference)

Drills:
1) Terminal toggle
   - Do: `<C-/>` (Ctrl+/) open/close terminal 5 times
   - Do: `<C-_>` (Ctrl+_ / underscore) open/close terminal 5 times
   - Reps: [ ]1 [ ]2 [ ]3

2) Reference jumps
   - Do: in a text file, use `]]` (right bracket, right bracket) and `[[` (left bracket, left bracket) to jump references
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) LazyGit
   - Do: `<leader>lg` (Space, then l, then g), then quit LazyGit with `q`
   - Reps: [ ]1 [ ]2 [ ]3

4) Codex workflow
   - Do: `<leader>ac` (Space, then a, then c) to toggle, `<leader>aw` (Space, then a, then w) to focus toggle
   - Do: `<leader>aC` (Space, then a, then Shift+c / C) to open in a chosen dir
   - Do: `<leader>a-` (Space, then a, then -) and `<leader>a+` (Space, then a, then Shift+= / +) to resize
   - Do: `<leader>aQ` (Space, then a, then Shift+q / Q) to hide, `<leader>ac` (Space, then a, then c) to show again
   - Do: `<leader>aR` (Space, then a, then Shift+r / R) to restart, `<leader>aU` (Space, then a, then Shift+u / U) to update
   - In the Codex terminal, press `<CR>` (Enter) to submit a prompt
   - While focused in Codex, use `<M-h>`/`<M-l>` (Alt/Option+h/l) to jump back and forth
   - Reps: [ ]1 [ ]2 [ ]3

## Mastery checklist (every keymap in this config)
Core and windows:
- n `<Esc>` (press Esc)
- n `<leader>q` (Space, then q)
- t `<Esc><Esc>` (Esc, then Esc)
- n `<C-h>` (Ctrl+h) `<C-j>` (Ctrl+j) `<C-k>` (Ctrl+k) `<C-l>` (Ctrl+l)
- n `<leader>sv` (Space, then s, then v) `<leader>sh` (Space, then s, then h) `<leader>wc` (Space, then w, then c) `<leader>wo` (Space, then w, then o)
- n/v/x `<Up>` (Up Arrow) `<Down>` (Down Arrow) `<Left>` (Left Arrow) `<Right>` (Right Arrow) (disabled)

Files, buffers, and pickers:
- n `\` (Backslash key)
- n `-` (Minus key)
- n `<leader>e` (Space, then e)
- n `<leader><Space>` (Space, then Space)
- n `]b` (right bracket, then b)
- n `[b` (left bracket, then b)
- n `<leader>bd` (Space, then b, then d)
- n `<leader>ss` (Space, then s, then s)
- n `<leader>sf` (Space, then s, then f)
- n `<leader>fF` (Space, then f, then Shift+f / F)
- n `<leader>sn` (Space, then s, then n)
- n `<leader>s.` (Space, then s, then .)
- n `<leader>sp` (Space, then s, then p)
- n `<leader>sk` (Space, then s, then k)
- n `<leader>sH` (Space, then s, then Shift+h / H)
- n `<leader>sg` (Space, then s, then g)
- n `<leader>gG` (Space, then g, then Shift+g / G)
- n/x `<leader>sw` (Space, then s, then w)
- n `<leader>s/` (Space, then s, then /)
- n `<leader>/` (Space, then /)
- n `<leader>sr` (Space, then s, then r)

Diagnostics and info:
- n `<leader>sd` (Space, then s, then d)
- n `<leader>un` (Space, then u, then n)
- n `<leader>?` (Space, then Shift+/ / ?)

LSP:
- n `<leader>rn` (Space, then r, then n)
- n/x `<leader>ca` (Space, then c, then a)
- n/x `<leader>cd` (Space, then c, then d)
- n `gd` (g then d) `gD` (g then Shift+d / D) `gI` (g then Shift+i / I) `gr` (g then r) `gt` (g then t)
- n `<leader>ds` (Space, then d, then s)
- n `<leader>ws` (Space, then w, then s)
- n `<leader>th` (Space, then t, then h)

Git:
- n `]c` (right bracket, then c) `[c` (left bracket, then c)
- v `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r)
- n `<leader>hs` (Space, then h, then s) `<leader>hr` (Space, then h, then r)
- n `<leader>hS` (Space, then h, then Shift+s / S) `<leader>hu` (Space, then h, then u) `<leader>hR` (Space, then h, then Shift+r / R)
- n `<leader>hp` (Space, then h, then p) `<leader>hb` (Space, then h, then b) `<leader>hd` (Space, then h, then d) `<leader>hD` (Space, then h, then Shift+d / D)
- n `<leader>tb` (Space, then t, then b) `<leader>tD` (Space, then t, then Shift+d / D)

Treesitter:
- n/v `<M-space>` (Alt/Option+Space)
- n/v `<Backspace>` (Backspace)
- o/x `af` (a then f) `if` (i then f) `ac` (a then c) `ic` (i then c) `as` (a then s)
- n `<leader>xs` (Space, then x, then s) `<leader>xS` (Space, then x, then Shift+s / S)

Formatting:
- n/o/v `<leader>f` (Space, then f)

Completion (insert mode):
- i `<C-Space>` (Ctrl+Space)
- i `<C-n>` (Ctrl+n) `<C-p>` (Ctrl+p) or `<Up>` (Up Arrow) `<Down>` (Down Arrow)
- i `<C-e>` (Ctrl+e)
- i `<C-k>` (Ctrl+k)
- i `<Tab>` (Tab) `<S-Tab>` (Shift+Tab)
- i `<Enter>` (Enter)

Terminal and tools:
- n/t `<C-/>` (Ctrl+/) `<C-_>` (Ctrl+_ / underscore)
- n `<leader>lg` (Space, then l, then g)
- n `<leader>ac` (Space, then a, then c) `<leader>aC` (Space, then a, then Shift+c / C) `<leader>aw` (Space, then a, then w) `<leader>aR` (Space, then a, then Shift+r / R) `<leader>aQ` (Space, then a, then Shift+q / Q) `<leader>a-` (Space, then a, then -) `<leader>a+` (Space, then a, then Shift+= / +) `<leader>aU` (Space, then a, then Shift+u / U)
- t `<CR>` (Enter) (Codex terminal)
- t `<M-h>` `<M-j>` `<M-k>` `<M-l>` (Alt/Option+hjkl) (Codex terminal window focus)
- n/t `]]` (right bracket, right bracket) `[[` (left bracket, left bracket)
