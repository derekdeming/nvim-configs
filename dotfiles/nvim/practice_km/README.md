# practice_km

This folder is a daily practice pack for your current Neovim setup. It is based on the keymaps and plugins you have configured in this repo.

Legend (used in all files):
- <leader> = Space
- <C-x> = Ctrl + x
- <M-x> = Alt/Option + x (Meta key)
- <S-x> = Shift + x
- <CR> = Enter
- <Esc> = Escape
- <Tab> / <S-Tab> = Tab / Shift+Tab
- Modes: n (normal), v (visual), x (visual select), i (insert), t (terminal), o (operator-pending), s (select)

Recommended daily flow (20-30 min):
1) 01_core_editing_drills.md
2) 02_windows_tabs_buffers.md
3) 03_navigation_and_search_drills.md
4) 04_completion_and_lsp.md
5) 05_git_and_debug.md
6) 06_markdown_drills.md (only if you write markdown)
7) 07_codex_terminal_drills.md

Notes:
- Some keymaps are buffer-local (LSP, fugitive, markdown) and only work in those buffers.
- <M-...> means the Alt/Option key. If it does not work in your terminal, set Option to send Esc+ key.
- If a mapping does not work, check with :verbose nmap <keys> to see what is currently bound.
