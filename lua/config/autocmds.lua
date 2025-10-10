-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable spell checking for txt and md files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "text", "markdown" },
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Disable diagnostics for .env files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".env*" },
  callback = function()
    vim.diagnostic.enable(false, { bufnr = 0 })
  end,
})
