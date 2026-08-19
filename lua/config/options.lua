-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.o
o.mouse = "" -- 禁用鼠标模式，避免选中即进入 visual 模式

-- 开启自动换行
o.wrap = true
-- 在单词边界处换行，避免从单词中间断开
o.linebreak = true
--o.showbreak = "↳ "          -- 显示折行标记
--o.breakindent = true        -- 保持缩进对齐
--o.breakindentopt = "shift:2" -- 额外增加2空格缩进

o.number = true
o.relativenumber = false
