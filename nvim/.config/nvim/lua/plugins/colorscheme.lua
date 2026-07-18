return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_enable_italic = 1
    end,
    config = function()
      vim.o.background = "dark"
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- tell LazyVim to use this colorscheme by default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
