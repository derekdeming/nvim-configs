# Windows, Tabs, and Buffers Drills

Goal: get comfortable with windows (splits), tabs, and buffers.

Part A: Splits and navigation
Step 1: Create a vertical split
# Keys: Space s v (leader + s + v)
<leader>sv
Press: Space, then s, then v.
Example: In any file, press Space s v to create a vertical split.

Step 2: Create a horizontal split
# Keys: Space s h
<leader>sh
Press: Space, then s, then h.
Example: In any file, press Space s h to create a horizontal split.

Step 3: Move between splits (tmux + vim navigation)
# Keys: Ctrl+h (left)
<C-h>
Press: Ctrl+h.
# Keys: Ctrl+j (down)
<C-j>
Press: Ctrl+j.
# Keys: Ctrl+k (up)
<C-k>
Press: Ctrl+k.
# Keys: Ctrl+l (right)
<C-l>
Press: Ctrl+l.
# Keys: Ctrl+\\ (previous split/pane)
<C-\\>
Press: Ctrl+\\.
Example: With two splits open, move around using each key.

Step 4: Equalize split sizes
# Keys: Space s e
<leader>se
Press: Space, then s, then e.
Example: Make one split larger, then press Space s e to equalize.

Step 5: Close the current split
# Keys: Space s x
<leader>sx
Press: Space, then s, then x.
Example: Close a split you no longer need with Space s x.

Step 6: Maximize/minimize a split
# Keys: Space s m
<leader>sm
Press: Space, then s, then m.
Example: Toggle maximize on the active split with Space s m.

Part B: Tabs
Step 7: Open a new tab
# Keys: Space t o
<leader>to
Press: Space, then t, then o.
Example: Press Space t o to open a fresh tab.

Step 8: Open current buffer in a new tab
# Keys: Space t f
<leader>tf
Press: Space, then t, then f.
Example: Press Space t f to open the current file in a new tab.

Step 9: Next/previous tab
# Keys: Space t n
<leader>tn
Press: Space, then t, then n.
# Keys: Space t p
<leader>tp
Press: Space, then t, then p.
Example: Open two tabs, then use Space t n and Space t p to move between them.

Step 10: Close current tab
# Keys: Space t x
<leader>tx
Press: Space, then t, then x.
Example: Close the current tab with Space t x.

Part C: Buffers (what they are)
Buffers are files loaded in memory. Windows show buffers.

Step 11: Open another file in the same window (creates another buffer)
# Keys: :e path/to/file<CR> (use any file)
:e path/to/file<CR>
Press: :, type e path/to/file, then Enter.
Example: Open another file in this repo with :e README.md<CR>.

Step 12: List buffers
# Keys: :ls<CR>
:ls<CR>
Press: :, type ls, then Enter.
Example: After opening another file, run :ls to see buffers.

Step 13: Jump to another buffer by number (from :ls)
# Keys: :b {number}<CR>
:b 2<CR>
Press: :, type b 2, then Enter.
Example: Use the buffer number from :ls and jump with :b 2<CR>.

Step 14: Go to next/previous buffer (built-in)
# Keys: :bnext<CR>
:bnext<CR>
Press: :, type bnext, then Enter.
# Keys: :bprev<CR>
:bprev<CR>
Press: :, type bprev, then Enter.
Example: Cycle between two buffers with :bnext and :bprev.

Step 15: Delete a buffer without closing the window
# Keys: :bd<CR>
:bd<CR>
Press: :, type bd, then Enter.
Example: Delete the current buffer and keep the window open.

Step 16: Toggle Undotree
# Keys: Space u
<leader>u
Press: Space, then u.
Example: Toggle Undotree and look at your undo history.

Part D: Terminal pop
Step 17: Toggle the floating terminal
# Keys: Space c /
<space>c/
Press: Space, then c, then /.
Example: Press Space c / to open the floating terminal.

Step 18: Exit terminal mode back to normal
# Keys: Esc Esc
<Esc><Esc>
Press: Escape, then Escape.
Example: In terminal mode, press Esc Esc to return to normal mode.
