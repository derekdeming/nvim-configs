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

Part D: Review.nvim (code review workflow)
Step 16: Open review diff for current changes
# Keys: Space Shift+R
<leader>R

Step 17: (Optional) Pick commits to review
# Keys: Space Shift+R then C
<leader>RC

Step 18: Add a comment on a line (readonly mode)
# Keys: i (then choose type, write comment, Ctrl+s to submit)
i

Step 19: Edit / delete comment at cursor
# Keys: e (edit) / d (delete)
e
d

Step 20: Jump between comments
# Keys: ] n / [ n
]n
[n

Step 21: Navigate files in the diff
# Keys: Tab / Shift+Tab
<Tab>
<S-Tab>

Step 22: Toggle readonly/edit mode and use leader comment keys
# Keys: R then Space c n/s/i/p (add), Space c d (delete), Space c e (edit)
R
<leader>cn
<leader>cs
<leader>ci
<leader>cp
<leader>cd
<leader>ce

Step 23: Export comments and close
# Keys: C (export+preview) or q (close+export)
C
q

Step 24: Full command workflow (preview/list/clear)
:Review preview
:Review list
:Review clear

Step 25: Send to AI
# If you have sidekick.nvim: use :Review sidekick
# Otherwise paste from clipboard into ChatGPT/Claude/Codex
:Review sidekick

Part E: Debugging (DAP)
Step 26: Toggle breakpoint
# Keys: Space d b
<leader>db

Step 27: Continue debugging
# Keys: Space d c
<leader>dc

Notes:
- Review.nvim comments are stored per git branch and exported as AI-ready markdown.
- Adjust settings by editing the plugin opts in `dotfiles/nvim/.config/nvim/lua/derk/plugins/gitstuff.lua` (comment types, keymaps, export context, readonly mode).
