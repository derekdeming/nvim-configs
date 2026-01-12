# Completion and LSP Drills

Use a file with an active LSP (e.g., TypeScript, Lua) for these steps.

Part A: LSP navigation and actions (buffer-local)
Step 1: Go to definition
# Keys: g d
gd

Step 2: Go to declaration
# Keys: g D
gD

Step 3: Go to implementation
# Keys: g i
gi

Step 4: Go to type definition
# Keys: g t
gt

Step 5: Show references
# Keys: g R
gR

Step 6: Hover documentation
# Keys: Shift+K
K

Step 7: Code actions (normal or visual)
# Keys: Space v c a
<leader>vca

Step 8: Rename symbol
# Keys: Space r n
<leader>rn

Step 9: Diagnostics list (current buffer)
# Keys: Space Shift+D
<leader>D

Step 10: Diagnostics float at cursor
# Keys: Space d (note: overrides delete-to-blackhole in LSP buffers)
<leader>d

Step 11: Toggle diagnostics display
# Keys: Space l x
<leader>lx

Step 12: Trigger linting (nvim-lint)
# Keys: Space l
<leader>l

Step 13: Restart LSP
# Keys: Space r s
<leader>rs

Step 14: Signature help (insert mode)
# Keys: Ctrl+h
<C-h>

Part B: Trouble (diagnostics UI)
Step 15: Open Trouble workspace diagnostics
# Keys: Space x w
<leader>xw

Step 16: Open Trouble document diagnostics
# Keys: Space x d
<leader>xd

Step 17: Open Trouble quickfix
# Keys: Space x q
<leader>xq

Step 18: Open Trouble loclist
# Keys: Space x l
<leader>xl

Step 19: Open Trouble todo list
# Keys: Space x t
<leader>xt

Part C: Completion (nvim-cmp)
Open insert mode and trigger completion by typing.

Step 20: Select next/prev completion item
# Keys: Ctrl+n / Ctrl+p
<C-n>
<C-p>

Step 21: Also works with Ctrl+j / Ctrl+k and arrows
# Keys: Ctrl+j / Ctrl+k / Down / Up
<C-j>
<C-k>
<Down>
<Up>

Step 22: Confirm completion
# Keys: Enter OR Ctrl+y
<CR>
<C-y>

Step 23: Abort completion menu
# Keys: Ctrl+e
<C-e>

Step 24: Scroll docs in completion menu
# Keys: Ctrl+f (down) / Ctrl+b (up)
<C-f>
<C-b>

Step 25: Close docs window
# Keys: Ctrl+d
<C-d>

Step 26: Tab / Shift-Tab behavior
# Keys: Tab (next item / expand snippet / indent)
<Tab>
# Keys: Shift+Tab (prev item / jump back / dedent)
<S-Tab>
