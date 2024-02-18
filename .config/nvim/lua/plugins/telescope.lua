local Plugin = { "nvim-telescope/telescope.nvim" }

Plugin.branch = "0.1.x"

Plugin.dependencies = {
  "nvim-lua/plenary.nvim",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  "nvim-tree/nvim-web-devicons",
}

Plugin.cmd = { "Telescope" }

function Plugin.init()
  vim.keymap.set(
    "n",
    "<leader>tf",
    "<cmd>Telescope find_files<cr>",
    { desc = "find files within current working directory" }
  )
  vim.keymap.set(
    "n",
    "<leader>ts",
    "<cmd>Telescope live_grep<cr>",
    { desc = "find string in current working directory as you type" }
  )
  vim.keymap.set(
    "n",
    "<leader>tc",
    "<cmd>Telescope grep_string<cr>",
    { desc = "find string under cursor in current working directory" }
  )
  vim.keymap.set(
    "n",
    "<leader>tb",
    "<cmd>Telescope buffers<cr>",
    { desc = "list open buffers in current neovim instance" }
  )
  vim.keymap.set("n", "<leader>tt", "<cmd>Telescope help_tags<cr>", { desc = "list available help tags" })
  vim.keymap.set(
    "n",
    "<leader>th",
    "<cmd>Telescope file_browser<cr>",
    { desc = "list files within current working directory" }
  )
  vim.keymap.set(
    "n",
    "<leader>gc",
    "<cmd>Telescope git_commits<cr>",
    { desc = "list all git commits (use <cr> to checkout) ['gc' for git commits]" }
  )
  vim.keymap.set(
    "n",
    "<leader>gfc",
    "<cmd>Telescope git_bcommits<cr>",
    { desc = "list git commits for current file/buffer (use <cr> to checkout) ['gfc' for git file commits]" }
  )
  vim.keymap.set(
    "n",
    "<leader>gb",
    "<cmd>Telescope git_branches<cr>",
    { desc = "list git branches (use <cr> to checkout) ['gb' for git branch]" }
  )
  vim.keymap.set(
    "n",
    "<leader>gs",
    "<cmd>Telescope git_status<cr>",
    { desc = "list current changes per file with diff preview ['gs' for git status]" }
  )
end

local function opts()
  local actions = require("telescope.actions")
  return {
    defaults = {
      initial_mode = "normal",
      pickers = {
        find_files = {
          no_ignore = true,
          hidden = true,
        },
      },
      mappings = {
        i = {
          ["<C-k>"] = actions.move_selection_previous, -- move to prev result
          ["<C-j>"] = actions.move_selection_next, -- move to next result
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
          ["<C-n>"] = actions.preview_scrolling_down,
          ["<C-p>"] = actions.preview_scrolling_up,
        },
        n = {
          ["<C-n>"] = actions.preview_scrolling_down,
          ["<C-p>"] = actions.preview_scrolling_up,
        },
      },
    },
  }
end

function Plugin.config()
  local telescope = require("telescope")
  telescope.load_extension("fzf")
  telescope.setup(opts())
end

return Plugin
