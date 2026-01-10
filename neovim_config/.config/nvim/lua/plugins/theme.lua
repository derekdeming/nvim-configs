return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  init = function()
    vim.o.background = "dark"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "original"
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.g.gruvbox_material_colors_override = {
      fg0 = { "#f6ebc9", "230" },
      fg1 = { "#f6ebc9", "230" },
    }
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_better_performance = 1
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
