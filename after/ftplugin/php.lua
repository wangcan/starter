-- ~/.config/nvim/after/ftplugin/php.lua
-- 强制 PHP 文件使用 4 空格缩进

local opts = { buffer = true }

vim.api.nvim_buf_set_option(0, 'expandtab', true)
vim.api.nvim_buf_set_option(0, 'tabstop', 4)
vim.api.nvim_buf_set_option(0, 'shiftwidth', 4)
