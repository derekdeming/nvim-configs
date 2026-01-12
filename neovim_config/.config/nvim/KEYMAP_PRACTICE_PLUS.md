# Neovim Keymap Practice Plus (Advanced)

Use this after you can run the basics in KEYMAP_PRACTICE.md without thinking.

Goal: build automaticity under speed, pressure, and context switching.

Leader key: Space (press Spacebar)
Legend: n=normal, v=visual, x=visual, i=insert, t=terminal, o=operator-pending, s=select, c=command-line

## Setup (5 min)
- Open a project with git history.
- Open at least 3 files with real code (Lua, TS, Rust, etc).
- Create a small edit so there is at least one git hunk.
- Make sure LSP is attached for at least one file.
- Optional: `:ShowkeysToggle` to see what you press.

## Accuracy to speed progression
- Phase 1: 90% accuracy, no timing.
- Phase 2: 95% accuracy, 60s timers.
- Phase 3: 100% accuracy, 30s timers.

## Advanced drills

### 1) Mode switch sprints (2 min)
Objective: switch modes without hesitation.
- Do: normal -> insert -> terminal -> normal -> visual -> normal
- Use: `<C-/>` (Ctrl+/) to open terminal, `<Esc><Esc>` (Esc, then Esc) to exit terminal
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 2) Split control flow (3 min)
Objective: split, navigate, and close without looking at the keyboard.
- Do: `<leader>sv` (Space, then s, then v) then `<leader>sh` (Space, then s, then h)
- Do: navigate every pane with `Ctrl+h`, `Ctrl+j`, `Ctrl+k`, `Ctrl+l`
- Do: `<leader>wo` (Space, then w, then o) then restore with `<leader>sv` (Space, then s, then v)
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 3) Search chain (4 min)
Objective: chain pickers and resume.
- Do: `<leader>sg` (Space, then s, then g) -> open result
- Do: `<leader>sf` (Space, then s, then f) -> open file
- Do: `<leader>/` (Space, then /) -> search in buffer
- Do: `<leader>sr` (Space, then s, then r) -> resume last picker
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 4) LSP triad (4 min)
Objective: go-to, symbols, and action in a single flow.
- Do: `gd` (g then d) -> `gr` (g then r) -> `gt` (g then t)
- Do: `<leader>ds` (Space, then d, then s) -> open symbol
- Do: `<leader>ca` (Space, then c, then a) on a warning or TODO
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 5) Git speed loop (4 min)
Objective: handle hunks with no hesitation.
- Do: `]c` (right bracket, then c) -> `<leader>hp` (Space, then h, then p) -> `<leader>hs` (Space, then h, then s)
- Do: `[c` (left bracket, then c) -> `<leader>hr` (Space, then h, then r)
- Do: `<leader>tb` (Space, then t, then b) toggle blame on/off
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 6) Treesitter precision (4 min)
Objective: select, expand, and swap fast.
- Do: `<M-space>` (Alt/Option+Space) x5 then `<Backspace>` (Backspace) x5
- Do: `vaf` (v then a then f) -> `vif` (v then i then f) -> `vas` (v then a then s)
- Do: `<leader>xs` (Space, then x, then s) then `<leader>xS` (Space, then x, then Shift+s / S)
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 7) File manager triad (3 min)
Objective: switch between explorers cleanly.
- Do: `\` (Backslash key) open explorer and open a file
- Do: `-` (Minus key) open parent directory and open a file
- Do: `<leader>e` (Space, then e) toggle tree on/off
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 8) Completion sprint (3 min)
Objective: drive completion without mouse.
- Do: `<C-Space>` (Ctrl+Space) open, then `Ctrl+n` / `Ctrl+p` to select, `<Enter>` (Enter) to accept
- Do: `<C-e>` (Ctrl+e) close, `<C-k>` (Ctrl+k) toggle signature
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

### 9) Codex multitask (3 min)
Objective: use Codex terminal while staying in editing flow.
- Do: `<leader>ac` (Space, then a, then c) open, `<leader>aw` (Space, then a, then w) focus toggle
- Do: send a prompt, then return to editor
- Do: while in Codex, jump windows with `<M-h>`/`<M-l>` (Alt/Option+h/l)
- Do: `<leader>a-` (Space, then a, then -) and `<leader>a+` (Space, then a, then Shift+= / +) resize
- Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Randomized drill deck
Pick a random number 1-20 (dice, random.org, or just pick).
Complete the task as fast as possible with zero errors.

1) Open help (`<leader>sH` (Space, then s, then Shift+h / H)) for "motion" then return to a file.
2) Search current buffer with `<leader>/` (Space, then /) and jump to a line.
3) Toggle NvimTree with `<leader>e` (Space, then e), open a file, then close it.
4) Use Oil `-` (Minus key) to open parent, then open a sibling file.
5) Run grep with `<leader>sg` (Space, then s, then g), open a result, then `<leader>sr` (Space, then s, then r) to resume.
6) Find file in a different directory with `<leader>fF` (Space, then f, then Shift+f / F).
7) Open buffers list `<leader><Space>` (Space, then Space) and switch to previous file.
8) Rename a symbol with `<leader>rn` (Space, then r, then n) and undo (`u` = press u).
9) Open diagnostics with `<leader>sd` (Space, then s, then d) and jump to one.
10) Toggle inlay hints `<leader>th` (Space, then t, then h) on/off.
11) Stage a hunk `<leader>hs` (Space, then h, then s) then reset it `<leader>hr` (Space, then h, then r).
12) Preview hunk `<leader>hp` (Space, then h, then p) then toggle deleted preview `<leader>tD` (Space, then t, then Shift+d / D).
13) Use Treesitter textobject `vaf` (v then a then f) then `vip` (v then i then p, built-in) to compare.
14) Incremental select `<M-space>` (Alt/Option+Space) three times then shrink once.
15) Open Codex `<leader>ac` (Space, then a, then c), focus toggle `<leader>aw` (Space, then a, then w), hide `<leader>aQ` (Space, then a, then Shift+q / Q).
16) Toggle terminal `<C-/>` (Ctrl+/), run `ls`, exit `<Esc><Esc>` (Esc, then Esc).
17) Open keymaps list `<leader>sk` (Space, then s, then k), search "grep".
18) Clear search highlight by typing `/test`, pressing Enter, then pressing Esc.
19) Use `<leader>lg` (Space, then l, then g) to open LazyGit, then quit.
20) Format buffer with `<leader>f` (Space, then f).

## Timed circuits (weekly)

### 10-minute circuit
- Core A1: Window grid navigation (2 min)
- Search C1: File find ladder (2 min)
- LSP E1: Goto sweep (2 min)
- Git F1: Hunk navigation (2 min)
- Treesitter G1: Incremental selection (2 min)

### 20-minute circuit
- Run the 10-minute circuit twice.
- On the second round, add Completion sprint and Codex multitask.

## Error recovery practice
Purpose: recover from mistakes without breaking flow.
- Mis-opened picker: press `<Esc>` (press Esc) then `<leader>sr` (Space, then s, then r) to resume later.
- Too many splits: use `<leader>wo` (Space, then w, then o) to reset.
- Lost in terminal: use `<Esc><Esc>` (Esc, then Esc) to get back.
- Wrong file: `<leader><Space>` (Space, then Space) to jump back.
- Messy edits: `<leader>f` (Space, then f) format and continue.

## Scorecard (optional)
Track time and errors. Only count clean reps.

Date: __________
- Core A: ___ min, errors ___
- Search C: ___ min, errors ___
- LSP E: ___ min, errors ___
- Git F: ___ min, errors ___
- Treesitter G: ___ min, errors ___
- Completion I: ___ min, errors ___
- Codex J: ___ min, errors ___

## Mastery goals
- 10 clean reps of every drill pack without looking at the keyboard.
- 0 errors in the random drill deck twice in a row.
- 20-minute circuit completed under 18 minutes with no misses.
