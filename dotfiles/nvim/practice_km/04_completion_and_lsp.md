# Completion and LSP Drills

Use a file with an active LSP (e.g., TypeScript, Lua) for these steps.

Part A: LSP navigation and actions (buffer-local)
Step 1: Go to definition
# Keys: g d
gd
Press: g, then d.
Example: Place cursor on a symbol and press g d to jump to its definition.

Step 2: Go to declaration
# Keys: g D
gD
Press: g, then Shift+d.
Example: Place cursor on a symbol and press g D to jump to its declaration.

Step 3: Go to implementation
# Keys: g i
gi
Press: g, then i.
Example: Place cursor on a symbol and press g i to see implementations.

Step 4: Go to type definition
# Keys: g t
gt
Press: g, then t.
Example: Place cursor on a symbol and press g t to go to its type.

Step 5: Show references
# Keys: g R
gR
Press: g, then Shift+r.
Example: Place cursor on a symbol and press g R to list references.

Step 6: Hover documentation
# Keys: Shift+K
K
Press: Shift+k.
Example: Place cursor on a symbol and press Shift+K to view docs.

Step 7: Code actions (normal or visual)
# Keys: Space v c a
<leader>vca
Press: Space, then v, then c, then a.
Example: Select a line and press Space v c a to open code actions.

Step 8: Rename symbol
# Keys: Space r n
<leader>rn
Press: Space, then r, then n.
Example: Place cursor on a symbol and press Space r n to rename it.

Step 9: Diagnostics list (current buffer)
# Keys: Space Shift+D
<leader>D
Press: Space, then Shift+d.
Example: Press Space Shift+D to open diagnostics for this buffer.

Step 10: Diagnostics float at cursor
# Keys: Space d (note: overrides delete-to-blackhole in LSP buffers)
<leader>d
Press: Space, then d.
Example: Place cursor on a diagnostic and press Space d.

Step 11: Toggle diagnostics display
# Keys: Space l x
<leader>lx
Press: Space, then l, then x.
Example: Toggle diagnostics visibility with Space l x.

Step 12: Trigger linting (nvim-lint)
# Keys: Space l
<leader>l
Press: Space, then l.
Example: Press Space l to run the linter for the current file.

Step 13: Restart LSP
# Keys: Space r s
<leader>rs
Press: Space, then r, then s.
Example: Press Space r s to restart the LSP.

Step 14: Signature help (insert mode)
# Keys: Ctrl+h
<C-h>
Press: Ctrl+h.
Example: In insert mode inside a function call, press Ctrl+h for signature help.

Part B: Trouble (diagnostics UI)
Step 15: Open Trouble workspace diagnostics
# Keys: Space x w
<leader>xw
Press: Space, then x, then w.
Example: Press Space x w to view workspace diagnostics.

Step 16: Open Trouble document diagnostics
# Keys: Space x d
<leader>xd
Press: Space, then x, then d.
Example: Press Space x d to view document diagnostics.

Step 17: Open Trouble quickfix
# Keys: Space x q
<leader>xq
Press: Space, then x, then q.
Example: Press Space x q to open the quickfix list.

Step 18: Open Trouble loclist
# Keys: Space x l
<leader>xl
Press: Space, then x, then l.
Example: Press Space x l to open the location list.

Step 19: Open Trouble todo list
# Keys: Space x t
<leader>xt
Press: Space, then x, then t.
Example: Press Space x t to view TODOs.

Part C: Completion (nvim-cmp)
Open insert mode and trigger completion by typing.

Step 20: Select next/prev completion item
# Keys: Ctrl+n / Ctrl+p
<C-n>
Press: Ctrl+n.
<C-p>
Press: Ctrl+p.
Example: With the completion menu open, use Ctrl+n and Ctrl+p.

Step 21: Also works with Ctrl+j / Ctrl+k and arrows
# Keys: Ctrl+j / Ctrl+k / Down / Up
<C-j>
Press: Ctrl+j.
<C-k>
Press: Ctrl+k.
<Down>
Press: Down Arrow.
<Up>
Press: Up Arrow.
Example: With the completion menu open, try Ctrl+j/Ctrl+k and the arrow keys.

Step 22: Confirm completion
# Keys: Enter OR Ctrl+y
<CR>
Press: Enter.
<C-y>
Press: Ctrl+y.
Example: Accept a completion with Enter or Ctrl+y.

Step 23: Abort completion menu
# Keys: Ctrl+e
<C-e>
Press: Ctrl+e.
Example: Open completion and press Ctrl+e to close it.

Step 24: Scroll docs in completion menu
# Keys: Ctrl+f (down) / Ctrl+b (up)
<C-f>
Press: Ctrl+f.
<C-b>
Press: Ctrl+b.
Example: Open completion docs and scroll with Ctrl+f and Ctrl+b.

Step 25: Close docs window
# Keys: Ctrl+d
<C-d>
Press: Ctrl+d.
Example: With docs visible, press Ctrl+d to close them.

Step 26: Tab / Shift-Tab behavior
# Keys: Tab (next item / expand snippet / indent)
<Tab>
Press: Tab.
# Keys: Shift+Tab (prev item / jump back / dedent)
<S-Tab>
Press: Shift+Tab.
Example: With completion open, use Tab and Shift+Tab to move between items.
