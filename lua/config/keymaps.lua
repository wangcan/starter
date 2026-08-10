-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 打开编译器选项
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
-- 重新运行上一次的任务
vim.api.nvim_set_keymap("n", "<S-F6>", "<cmd>CompilerStop<cr><cmd>CompilerRedo<cr>", { noremap = true, silent = true })
-- 切换显示编译结果窗口
vim.api.nvim_set_keymap("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
