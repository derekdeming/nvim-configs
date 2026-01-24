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
Press: Shift+v, then j, then Shift+j.
Example: Place cursor on "alpha bravo charlie" and press V j J to move it down.

Step 2: Move a line up using visual line mode
# Keys: Shift+V, k (up one line), Shift+K (move selection up)
V k K
Press: Shift+v, then k, then Shift+k.
Example: Place cursor on "bravo can move" and press V k K to move it up.

Step 3: Join two lines into one
# Keys: Shift+J (join line below to current line)
J
Press: J (Shift+j).
Example: Place cursor on the first "one two three four five" line and press J to join it with the next line.

Step 4: Indent a block and keep selection
# Keys: Shift+V, j (select 2 lines), > (indent right)
V j >
Press: Shift+v, then j, then > (greater-than, Shift+.).
Example: On the two "one two three four five" lines, press V j > to indent both.

Step 5: Unindent the same block and keep selection
# Keys: < (indent left)
<
Press: < (less-than, Shift+,).
Example: With those two lines still selected, press < to unindent.

Step 6: Delete a word without yanking it
# Keys: v i w (visual inner word), Space d (leader + d)
viw<leader>d
Press: v, then i, then w, then Space, then d.
Example: Place cursor on "alpha" and press v i w Space d.

Step 7: Paste over a word without overwriting your yank
# Keys: v i w, Space p (leader + p)
viw<leader>p
Press: v, then i, then w, then Space, then p.
Example: Yank another word first, then place cursor on "bravo" and press v i w Space p.

Step 8: Paste in visual mode without overwriting your yank
# Keys: v i w, p
viwp
Press: v, then i, then w, then p.
Example: Select a word with v i w and press p to paste over it without overwriting your yank.

Step 9: Delete a single character without yanking
# Keys: x
x
Press: x.
Example: Place cursor on any character and press x.

Step 10: Replace the word under cursor everywhere in the file
# Keys: Space s r (leader + s + r)
<leader>sr
Press: Space, then s, then r.
Example: Place cursor on "bravo", press Space s r, type a new word, then press Enter.

Step 11: Yank a line to your system clipboard
# Keys: Space Shift+Y (leader + Y)
<leader>Y
Press: Space, then Shift+y.
Example: Place cursor on any line and press Space Shift+Y.

Step 11b: Delete a word in the middle of text (built-in Vim)
# Keys: d i w (delete inner word)
diw
Press: d, then i, then w.
Example: Place cursor on "charlie" and press d i w.

Step 11c: Change a word in the middle of text (built-in Vim)
# Keys: c i w (change inner word)
ciw
Press: c, then i, then w.
Example: Place cursor on "alpha", press c i w, type a new word, then press Escape.

Step 11d: Change inside quotes (built-in Vim)
# Keys: c i \" (change inside double quotes)
ci\"
Press: c, then i, then " (double quote).
Example: After adding quotes, place cursor inside and press c i " to change the inner text.

Step 12: Format the file (LSP format)
# Keys: Space f (leader + f)
<leader>f
Press: Space, then f.
Example: In a file with LSP attached, press Space f.

Step 13: Format via Conform (whole file or selection)
# Keys: Space m p (leader + m + p)
<leader>mp
Press: Space, then m, then p.
Example: Select a few lines and press Space m p.

Step 14: Wrap a word in quotes with Mini Surround
# Keys: s a " (add surround with double quotes)
sa"
Press: s, then a, then " (double quote).
Example: Place cursor on "wrap_me_with_quotes" and press s a ".

Step 15: Remove the quotes you just added
# Keys: d s " (delete surround of double quotes)
ds"
Press: d, then s, then " (double quote).
Example: With the word still quoted, press d s ".

Step 16: Replace one surround with another
# Keys: s r " ' (replace double quotes with single quotes)
sr"'
Press: s, then r, then ", then ' (apostrophe).
Example: With double quotes present, press s r " ' to switch to single quotes.

Step 17: Split/join function arguments
# Keys: s j (join arguments)
sj
Press: s, then j.
# Keys: s k (split arguments)
sk
Press: s, then k.
Example: Place cursor on the function call and press s j, then s k.

Step 18: Escape insert mode with Ctrl-c
# Keys: Ctrl+c
<C-c>
Press: Ctrl+c.
Example: Enter insert mode with i, type a few characters, then press Ctrl+c.

Step 19: Clear search highlight
# Keys: Ctrl+c (normal mode)
<C-c>
Press: Ctrl+c.
Example: Search with /alpha and press Enter, then press Ctrl+c to clear highlights.

Step 20: Emmet wrap (HTML/JSX/TSX only)
# Keys: Space x e
<leader>xe
Press: Space, then x, then e.
Example: In an HTML/JSX file, select text and press Space x e to wrap with an abbreviation.
