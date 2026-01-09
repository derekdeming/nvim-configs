# Keymap Practice Drills

Goal: build speed and accuracy. Use a timer, keep reps honest.

Suggested schedule:
- Week 1: 10 min/day (1 round)
- Week 2+: 15-20 min/day (2 rounds)

Round checklist:
- [ ] Round 1
- [ ] Round 2
- [ ] Round 3

Legend: n=normal, v=visual, x=visual, i=insert, t=terminal, o=operator-pending, s=select, c=command-line

## Warmup (2 min)
1) Clear search highlight
   - Do: `/test<CR>` then `<Esc>`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5 [ ]6 [ ]7 [ ]8 [ ]9 [ ]10

2) Window navigation
   - Setup: `:vsplit` and `:split` to make 4 panes
   - Do: cycle `<C-h> <C-j> <C-k> <C-l>`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5 [ ]6 [ ]7 [ ]8 [ ]9 [ ]10

## Search & Files (5 min)
1) Find file in current cwd
   - Do: `<leader>sf`, open any file, `:bd` to close
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5 [ ]6 [ ]7 [ ]8 [ ]9 [ ]10

2) Find file in any directory
   - Do: `<leader>fF`, pick a different folder, open a file
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Grep in current cwd
   - Do: `<leader>sg`, search a term, open a result
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5 [ ]6 [ ]7 [ ]8 [ ]9 [ ]10

4) Grep in any directory
   - Do: `<leader>gG`, pick a folder, search a term
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

5) Buffer search
   - Do: `<leader>/`, search within current buffer
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## LSP (5 min)
Use a file with an attached LSP (e.g. Lua files in this config).

1) Go-to motions
   - Do: `gd`, `gr`, `gI`, `gD`, `gt`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Symbols
   - Do: `<leader>ds`, `<leader>ws`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Actions
   - Do: `<leader>rn`, `<leader>ca`, `<leader>cd`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

4) Inlay hints (if supported)
   - Do: `<leader>th` toggle on/off
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Git (5 min)
Use a file with git changes in a repo.

1) Hunk navigation
   - Do: `]c`, `[c`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Hunk actions
   - Do: `<leader>hs`, `<leader>hr`, `<leader>hp`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Buffer actions
   - Do: `<leader>hS`, `<leader>hR`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

4) Blame/diff toggles
   - Do: `<leader>hb`, `<leader>hd`, `<leader>hD`, `<leader>tb`, `<leader>tD`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Treesitter (5 min)
Use a code file with functions/classes.

1) Incremental selection
   - Do: `<M-space>` to start, expand 5 times, then `<Backspace>` 5 times
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Textobjects (visual or operator-pending)
   - Do: `vaf`, `vif`, `vac`, `vic`, `vas`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Swap parameters (if you have a function with args)
   - Do: `<leader>xs`, `<leader>xS`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Terminal (2 min)
1) Toggle terminal
   - Do: `<C-/>` to open/close, then `<Esc><Esc>` to exit terminal mode
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

## Codex CLI (2 min)
1) Toggle Codex
   - Do: `<leader>ac` to show/hide
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

1b) Toggle focus between Codex and editor
   - Do: `<leader>aw`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

2) Open Codex in a chosen directory
   - Do: `<leader>aC`, pick a dir, then close terminal with `q`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

3) Restart Codex session
   - Do: `<leader>aR`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

4) Resize Codex window
   - Do: `<leader>a-` then `<leader>a+`
   - Reps: [ ]1 [ ]2 [ ]3 [ ]4 [ ]5

5) Update Codex CLI
   - Do: `<leader>aU`, wait for brew to finish, then close terminal with `q`
   - Reps: [ ]1 [ ]2 [ ]3

Notes:
- Some mappings are buffer-local or context-specific (LSP, git, treesitter).
- Use `:pwd` and `:cd` if your searches are scoped too narrowly.
