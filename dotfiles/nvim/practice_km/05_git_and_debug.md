# Git and Debug Drills

Do these in a git repo with changes for best results.

Part A: Git status (Fugitive)
Step 1: Open Git status
# Keys: Space g g
<leader>gg
Press: Space, then g, then g.
Example: In a git repo, press Space g g to open Fugitive.

Inside Fugitive buffer:
Step 2: Push
# Keys: Space Shift+P
<leader>P
Press: Space, then Shift+p.
Example: In Fugitive, press Space Shift+P to push.

Step 3: Pull with rebase
# Keys: Space p
<leader>p
Press: Space, then p.
Example: In Fugitive, press Space p to pull with rebase.

Step 4: Push with upstream (type branch name after)
# Keys: Space t
<leader>t
Press: Space, then t.
Example: In Fugitive, press Space t and type a branch name.

Part B: Gitsigns (buffer-local)
Step 5: Next/previous hunk
# Keys: ] h
]h
Press: ], then h.
# Keys: [ h
[h
Press: [, then h.
Example: In a modified file, use ] h and [ h to move between hunks.

Step 6: Stage / reset hunk
# Keys: Space g s
<leader>gs
Press: Space, then g, then s.
# Keys: Space g r
<leader>gr
Press: Space, then g, then r.
Example: Stage a hunk with Space g s, then reset it with Space g r.

Step 7: Stage / reset whole buffer
# Keys: Space g Shift+S
<leader>gS
Press: Space, then g, then Shift+s.
# Keys: Space g Shift+R
<leader>gR
Press: Space, then g, then Shift+r.
Example: Stage the buffer with Space g S, then reset with Space g R.

Step 8: Undo stage hunk
# Keys: Space g u
<leader>gu
Press: Space, then g, then u.
Example: Stage a hunk, then undo it with Space g u.

Step 9: Preview hunk
# Keys: Space g p
<leader>gp
Press: Space, then g, then p.
Example: Press Space g p to preview the current hunk.

Step 10: Blame line and toggle blame
# Keys: Space g b l
<leader>gbl
Press: Space, then g, then b, then l.
# Keys: Space g B
<leader>gB
Press: Space, then g, then Shift+b.
Example: Press Space g b l to blame the line, then Space g B to toggle line blame.

Step 11: Diff this buffer
# Keys: Space g d
<leader>gd
Press: Space, then g, then d.
# Keys: Space g Shift+D
<leader>gD
Press: Space, then g, then Shift+d.
Example: Press Space g d to diff the buffer, then Space g D to diff against HEAD~.

Step 12: Hunk text object
# Keys: v i h (visual select hunk)
vih
Press: v, then i, then h.
Example: Place cursor in a hunk and press v i h to select it.

Part C: Git tools
Step 13: Lazygit
# Keys: Space l g
<leader>lg
Press: Space, then l, then g.
Example: Press Space l g to open Lazygit.

Step 14: Lazygit logs
# Keys: Space g l
<leader>gl
Press: Space, then g, then l.
Example: Press Space g l to open Lazygit logs.

Step 15: Worktrees
# Keys: Space w l
<leader>wl
Press: Space, then w, then l.
# Keys: Space w c
<leader>wc
Press: Space, then w, then c.
Example: List worktrees with Space w l and create one with Space w c.

Part D: Review.nvim (code review workflow)
Step 16: Open review diff for current changes
# Keys: Space Shift+R
<leader>R
Press: Space, then Shift+r.
Example: Press Space Shift+R to open the review diff.

Step 17: (Optional) Pick commits to review
# Keys: Space Shift+R then C
<leader>RC
Press: Space, then Shift+r, then Shift+c.
Example: Press Space Shift+R then C to pick commits.

Step 18: Add a comment on a line (readonly mode)
# Keys: i (then choose type, write comment, Ctrl+s to submit)
i
Press: i.
Example: Press i, choose a comment type, write text, then press Ctrl+s to submit.

Step 19: Edit / delete comment at cursor
# Keys: e (edit) / d (delete)
e
Press: e.
d
Press: d.
Example: Place cursor on a comment and press e to edit or d to delete.

Step 20: Jump between comments
# Keys: ] n / [ n
]n
Press: ], then n.
[n
Press: [, then n.
Example: Use ] n and [ n to move between comments.

Step 21: Navigate files in the diff
# Keys: Tab / Shift+Tab
<Tab>
Press: Tab.
<S-Tab>
Press: Shift+Tab.
Example: Use Tab and Shift+Tab to move between files.

Step 22: Toggle readonly/edit mode and use leader comment keys
# Keys: R then Space c n/s/i/p (add), Space c d (delete), Space c e (edit)
R
Press: Shift+r.
<leader>cn
Press: Space, then c, then n.
<leader>cs
Press: Space, then c, then s.
<leader>ci
Press: Space, then c, then i.
<leader>cp
Press: Space, then c, then p.
<leader>cd
Press: Space, then c, then d.
<leader>ce
Press: Space, then c, then e.
Example: Press R to toggle mode, then use Space c n/s/i/p to add comments.

Step 23: Export comments and close
# Keys: C (export+preview) or q (close+export)
C
Press: Shift+c.
q
Press: q.
Example: Press C to export+preview, then q to close.

Step 24: Full command workflow (preview/list/clear)
:Review preview
Press: :, type Review preview, then Enter.
:Review list
Press: :, type Review list, then Enter.
:Review clear
Press: :, type Review clear, then Enter.
Example: Run preview, list, then clear to practice the full workflow.

Step 25: Send to AI
# If you have sidekick.nvim: use :Review sidekick
# Otherwise paste from clipboard into ChatGPT/Claude/Codex
:Review sidekick
Press: :, type Review sidekick, then Enter.
Example: Run :Review sidekick to send comments to your AI tool.

Part E: Debugging (DAP)
Step 26: Toggle breakpoint
# Keys: Space d b
<leader>db
Press: Space, then d, then b.
Example: Press Space d b to toggle a breakpoint on the current line.

Step 27: Continue debugging
# Keys: Space d c
<leader>dc
Press: Space, then d, then c.
Example: Start a debug session and press Space d c to continue.

Notes:
- Review.nvim comments are stored per git branch and exported as AI-ready markdown.
- Adjust settings by editing the plugin opts in `dotfiles/nvim/.config/nvim/lua/derk/plugins/gitstuff.lua` (comment types, keymaps, export context, readonly mode).
