-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- text encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- line numbers
vim.wo.number = true -- show absolute line number
vim.opt.relativenumber = true -- show relative line number

vim.opt.title = true

-- indentation
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true -- copy indent from prev line

-- search settings
vim.opt.ignorecase = true -- ignore case
vim.opt.smartcase = true -- case-sensitive when using mixed case
vim.opt.hlsearch = false -- disable highlight for search term
vim.opt.incsearch = true

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.showmode = false
vim.opt.cmdheight = 0
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.mouse = ""
vim.opt.shell = "bash"
vim.opt.spelllang = { "en", "fr" }
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.wrap = false -- No Wrap lines
vim.opt.formatoptions = "jcql"
vim.opt.backspace = { "start", "eol", "indent" } -- allow backspace on indent, end of line or insert mode start position
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })

vim.g.markdown_recommended_style = 0
