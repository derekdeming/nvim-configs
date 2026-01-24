# Navigation and Search Drills

Goal: move quickly across files and directories.

Part A: Snacks and Telescope pickers
Step 1: Find files (Snacks)
# Keys: Space p f
<leader>pf
Press: Space, then p, then f.
Example: Press Space p f and open any file.

Step 2: Find config files (Snacks, opens lua dir)
# Keys: Space p c
<leader>pc
Press: Space, then p, then c.
Example: Press Space p c and open a config file.

Step 3: Grep (live search)
# Keys: Space p s
<leader>ps
Press: Space, then p, then s.
Example: Press Space p s and search for a word like "leader".

Step 4: Grep word under cursor or visual selection
# Keys: Space p w s
<leader>pws
Press: Space, then p, then w, then s.
Example: Place cursor on a word and press Space p w s.

Step 5: Find keymaps (Snacks)
# Keys: Space p k
<leader>pk
Press: Space, then p, then k.
Example: Press Space p k and search for "split".

Step 6: Rename current file (Snacks)
# Keys: Space r N
<leader>rN
Press: Space, then r, then Shift+n.
Example: Press Space r N and rename the current file.

Step 7: Delete/close current buffer (Snacks)
# Keys: Space d B
<leader>dB
Press: Space, then d, then Shift+b.
Example: Close the current buffer with Space d B.

Step 8: Recent files (Telescope)
# Keys: Space p r
<leader>pr
Press: Space, then p, then r.
Example: Open the recent files picker and select a file.

Step 9: Grep current WORD under cursor (Telescope)
# Keys: Space p W s (note capital W)
<leader>pWs
Press: Space, then p, then Shift+w, then s.
Example: Place cursor on a WORD and press Space p W s.

Step 10: Theme picker (Snacks)
# Keys: Space t h
<leader>th
Press: Space, then t, then h.
Example: Press Space t h and preview a theme.

Step 11: Theme picker (Telescope themes extension)
# Keys: Space t h s
<leader>ths
Press: Space, then t, then h, then s.
Example: Press Space t h s and choose a theme.

Part B: File explorers
Step 12: Open parent directory (Oil)
# Keys: - (dash)
-
Press: - (dash).
Example: Press - in a file to open the parent directory in Oil.

Step 13: Toggle Oil floating view
# Keys: Space - (leader + dash)
<leader>-
Press: Space, then - (dash).
Example: Press Space - to toggle the Oil float.

Step 14: Open Mini Files (file explorer)
# Keys: Space e e
<leader>ee
Press: Space, then e, then e.
Example: Press Space e e to open Mini Files.

Step 15: Open Mini Files at current file
# Keys: Space e f
<leader>ef
Press: Space, then e, then f.
Example: Press Space e f to open Mini Files focused on the current file.

Inside Mini Files:
# Keys: Enter to go in
<CR>
Press: Enter.
# Keys: Shift+L to go in (same as Enter)
L
Press: Shift+l.
# Keys: - (dash) to go out
-
Press: - (dash).
# Keys: Shift+H to go out
H
Press: Shift+h.
Example: In Mini Files, press Enter to go in, then - to go out.

Inside Oil:
# Keys: Alt/Option + h to open in split
<M-h>
Press: Alt/Option+h.
# Keys: q to close Oil
q
Press: q.
Example: In Oil, press Alt/Option+h to open a split, then q to close.

Part C: Harpoon
Step 16: Add current file to Harpoon
# Keys: Space a
<leader>a
Press: Space, then a.
Example: Press Space a to add the current file to Harpoon.

Step 17: Open Harpoon quick menu
# Keys: Ctrl+e
<C-e>
Press: Ctrl+e.
Example: Press Ctrl+e to open the Harpoon menu.

Step 18: Jump to Harpoon slots 1-4
# Keys: Ctrl+y / Ctrl+i / Ctrl+n / Ctrl+s
<C-y>
Press: Ctrl+y.
<C-i>
Press: Ctrl+i.
<C-n>
Press: Ctrl+n.
<C-s>
Press: Ctrl+s.
Example: Add a few files, then jump to them with Ctrl+y, Ctrl+i, Ctrl+n, Ctrl+s.

Step 19: Previous/next Harpoon entry
# Keys: Ctrl+Shift+P / Ctrl+Shift+N
<C-S-P>
Press: Ctrl+Shift+p.
<C-S-N>
Press: Ctrl+Shift+n.
Example: Use Ctrl+Shift+P and Ctrl+Shift+N to move between Harpoon entries.

Part D: Haunt (annotated bookmarks)
Step 20: Annotate current line
# Keys: Space b a
<leader>ba
Press: Space, then b, then a.
Example: Add a short note to the current line.

Step 21: Toggle current annotation
# Keys: Space b t
<leader>bt
Press: Space, then b, then t.
Example: Toggle the ghost text on the current line.

Step 22: Toggle all annotations
# Keys: Space b T
<leader>bT
Press: Space, then b, then Shift+t.
Example: Show or hide all annotations in the buffer.

Step 23: Next/previous annotation
# Keys: Space b n / Space b p
<leader>bn
Press: Space, then b, then n.
<leader>bp
Press: Space, then b, then p.
Example: Jump between annotations in the current buffer.

Step 24: Open haunt picker
# Keys: Space b l
<leader>bl
Press: Space, then b, then l.
Example: Pick an annotation from the list and jump to it.

Step 25: Populate quickfix list
# Keys: Space b q / Space b Q
<leader>bq
Press: Space, then b, then q.
<leader>bQ
Press: Space, then b, then Shift+q.
Example: Push all (or buffer-only) annotations into quickfix.

Step 26: Copy annotations to clipboard
# Keys: Space b s / Space b S
<leader>bs
Press: Space, then b, then s.
<leader>bS
Press: Space, then b, then Shift+s.
Example: Copy all (or buffer-only) annotation locations to clipboard.

Part E: Worktrees and sessions
Step 27: List git worktrees
# Keys: Space w l
<leader>wl
Press: Space, then w, then l.
Example: In a git repo, press Space w l to list worktrees.

Step 28: Create git worktree
# Keys: Space w c
<leader>wc
Press: Space, then w, then c.
Example: Press Space w c and follow the prompts to create a worktree.

Step 29: Save session
# Keys: Space w s
<leader>ws
Press: Space, then w, then s.
Example: Press Space w s to save the current session.

Step 30: Restore session
# Keys: Space w r
<leader>wr
Press: Space, then w, then r.
Example: Press Space w r to restore the last session.

Part F: In-file search flow
Step 31: Search for a word
# Keys: /word <CR>
/word <CR>
Press: /, type a word, then Enter.
Example: Type /alpha and press Enter.

Step 32: Next/previous match with centered cursor
# Keys: n (next)
n
Press: n.
# Keys: N (previous)
N
Press: Shift+n.
Example: After a search, press n and N to move between matches.

Step 33: Clear search highlight
# Keys: Ctrl+c
<C-c>
Press: Ctrl+c.
Example: After searching, press Ctrl+c to clear highlights.
