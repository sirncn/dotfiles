local Plugin = { "numToStr/Comment.nvim" }

Plugin.event = { "BufReadPre", "BufNewFile" }

Plugin.opts = {
  mappings = {
    basic = false,
    extra = false,
  },
}
Plugin.keys = {
  {
    "<leader>:",
    mode = "n",
    "<Plug>(comment_toggle_linewise_current)",
    desc = "comment linewise",
  },
  {
    "<leader>:",
    mode = "x",
    "<Plug>(comment_toggle_linewise_visual)",
    desc = "comment linewise",
  },
}

return Plugin
