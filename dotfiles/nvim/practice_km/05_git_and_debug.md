# Git and Debug Drills

Do these in a git repo with changes for best results.

Part A: Git status (Fugitive)
Step 1: Open Git status
# Keys: Space g g
<leader>gg

Inside Fugitive buffer:
Step 2: Push
# Keys: Space Shift+P
<leader>P

Step 3: Pull with rebase
# Keys: Space p
<leader>p

Step 4: Push with upstream (type branch name after)
# Keys: Space t
<leader>t

Part B: Gitsigns (buffer-local)
Step 5: Next/previous hunk
# Keys: ] h
]h
# Keys: [ h
[h

Step 6: Stage / reset hunk
# Keys: Space g s
<leader>gs
# Keys: Space g r
<leader>gr

Step 7: Stage / reset whole buffer
# Keys: Space g Shift+S
<leader>gS
# Keys: Space g Shift+R
<leader>gR

Step 8: Undo stage hunk
# Keys: Space g u
<leader>gu

Step 9: Preview hunk
# Keys: Space g p
<leader>gp

Step 10: Blame line and toggle blame
# Keys: Space g b l
<leader>gbl
# Keys: Space g B
<leader>gB

Step 11: Diff this buffer
# Keys: Space g d
<leader>gd
# Keys: Space g Shift+D
<leader>gD

Step 12: Hunk text object
# Keys: v i h (visual select hunk)
vih

Part C: Git tools
Step 13: Lazygit
# Keys: Space l g
<leader>lg

Step 14: Lazygit logs
# Keys: Space g l
<leader>gl

Step 15: Worktrees
# Keys: Space w l
<leader>wl
# Keys: Space w c
<leader>wc

Part D: Debugging (DAP)
Step 16: Toggle breakpoint
# Keys: Space d b
<leader>db

Step 17: Continue debugging
# Keys: Space d c
<leader>dc
