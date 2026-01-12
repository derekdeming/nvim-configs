# Core Editing Drills

Use this file as a playground. Practice the exact keystrokes shown.

Practice text (edit this):
alpha bravo charlie
 delta has a leading space
bravo can move
charlie stays

one two three four five
one two three four five

function call_example(arg1, arg2, arg3)
function call_example(
    arg1,
    arg2,
    arg3
)

wrap_me_with_quotes

Step 1: Move a line down using visual line mode
# Keys: Shift+V (visual line), j (down one line), Shift+J (move selection down)
V j J

Step 2: Move a line up using visual line mode
# Keys: Shift+V, k (up one line), Shift+K (move selection up)
V k K

Step 3: Join two lines into one
# Keys: Shift+J (join line below to current line)
J

Step 4: Indent a block and keep selection
# Keys: Shift+V, j (select 2 lines), > (indent right)
V j >

Step 5: Unindent the same block and keep selection
# Keys: < (indent left)
<

Step 6: Delete a word without yanking it
# Keys: v i w (visual inner word), Space d (leader + d)
viw<leader>d

Step 7: Paste over a word without overwriting your yank
# Keys: v i w, Space p (leader + p)
viw<leader>p

Step 8: Paste in visual mode without overwriting your yank
# Keys: v i w, p
viwp

Step 9: Delete a single character without yanking
# Keys: x
x

Step 10: Replace the word under cursor everywhere in the file
# Keys: Space s (leader + s)
<leader>s

Step 11: Yank a line to your system clipboard
# Keys: Space Shift+Y (leader + Y)
<leader>Y

Step 11b: Delete a word in the middle of text (built-in Vim)
# Keys: d i w (delete inner word)
diw

Step 11c: Change a word in the middle of text (built-in Vim)
# Keys: c i w (change inner word)
ciw

Step 11d: Change inside quotes (built-in Vim)
# Keys: c i \" (change inside double quotes)
ci\"

Step 12: Format the file (LSP format)
# Keys: Space f (leader + f)
<leader>f

Step 13: Format via Conform (whole file or selection)
# Keys: Space m p (leader + m + p)
<leader>mp

Step 14: Wrap a word in quotes with Mini Surround
# Keys: s a " (add surround with double quotes)
sa"

Step 15: Remove the quotes you just added
# Keys: d s " (delete surround of double quotes)
ds"

Step 16: Replace one surround with another
# Keys: s r " ' (replace double quotes with single quotes)
sr"'

Step 17: Split/join function arguments
# Keys: s j (join arguments)
sj
# Keys: s k (split arguments)
sk

Step 18: Escape insert mode with Ctrl-c
# Keys: Ctrl+c
<C-c>

Step 19: Clear search highlight
# Keys: Ctrl+c (normal mode)
<C-c>

Step 20: Emmet wrap (HTML/JSX/TSX only)
# Keys: Space x e
<leader>xe
