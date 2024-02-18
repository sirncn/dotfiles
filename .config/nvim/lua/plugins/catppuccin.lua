return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    integrations = {
      mason = true,
      treesitter = true,
      telescope = true,
      which_key = true,
    },
  },
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}
