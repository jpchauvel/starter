-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_picker = "telescope"
vim.lsp.inlay_hint.enable(true)
vim.g.autoformat = false

vim.g.lazyvim_python_lsp = "basedpyright"
vim.diagnostic.config({ virtual_text = false })

vim.g.editorconfig = true
