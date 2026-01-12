# Windows, Tabs, and Buffers Drills

Goal: get comfortable with windows (splits), tabs, and buffers.

Part A: Splits and navigation
Step 1: Create a vertical split
# Keys: Space s v (leader + s + v)
<leader>sv

Step 2: Create a horizontal split
# Keys: Space s h
<leader>sh

Step 3: Move between splits (tmux + vim navigation)
# Keys: Ctrl+h (left)
<C-h>
# Keys: Ctrl+j (down)
<C-j>
# Keys: Ctrl+k (up)
<C-k>
# Keys: Ctrl+l (right)
<C-l>
# Keys: Ctrl+\\ (previous split/pane)
<C-\\>

Step 4: Equalize split sizes
# Keys: Space s e
<leader>se

Step 5: Close the current split
# Keys: Space s x
<leader>sx

Step 6: Maximize/minimize a split
# Keys: Space s m
<leader>sm

Part B: Tabs
Step 7: Open a new tab
# Keys: Space t o
<leader>to

Step 8: Open current buffer in a new tab
# Keys: Space t f
<leader>tf

Step 9: Next/previous tab
# Keys: Space t n
<leader>tn
# Keys: Space t p
<leader>tp

Step 10: Close current tab
# Keys: Space t x
<leader>tx

Part C: Buffers (what they are)
Buffers are files loaded in memory. Windows show buffers.

Step 11: Open another file in the same window (creates another buffer)
# Keys: :e path/to/file<CR> (use any file)
:e path/to/file<CR>

Step 12: List buffers
# Keys: :ls<CR>
:ls<CR>

Step 13: Jump to another buffer by number (from :ls)
# Keys: :b {number}<CR>
:b 2<CR>

Step 14: Go to next/previous buffer (built-in)
# Keys: :bnext<CR>
:bnext<CR>
# Keys: :bprev<CR>
:bprev<CR>

Step 15: Delete a buffer without closing the window
# Keys: :bd<CR>
:bd<CR>

Step 16: Toggle Undotree
# Keys: Space u
<leader>u

Part D: Terminal pop
Step 17: Toggle the floating terminal
# Keys: Space c /
<space>c/

Step 18: Exit terminal mode back to normal
# Keys: Esc Esc
<Esc><Esc>
