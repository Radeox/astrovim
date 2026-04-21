-- Use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- Remove auto-commenting on newline
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function() vim.opt_local.formatoptions:remove { "r", "o" } end,
})
