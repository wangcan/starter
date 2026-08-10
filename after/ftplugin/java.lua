-- ~/.config/nvim/after/ftplugin/java.lua
-- 强制 JAVA 文件使用 4 空格缩进

local opts = { buffer = true }

vim.api.nvim_buf_set_option(0, "expandtab", true)
vim.api.nvim_buf_set_option(0, "tabstop", 4)
vim.api.nvim_buf_set_option(0, "shiftwidth", 4)

local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local jdtls_bin = jdtls_path .. "/bin/jdtls"

-- 强制设置 JAVA_HOME（如果你用 SDKMAN 安装的 21，路径大概如下）
vim.env.JAVA_HOME = vim.fn.expand("$HOME/.sdkman/candidates/java/current")

-- 启动 jdtls
require("jdtls").start_or_attach({
  cmd = { jdtls_bin },
})
