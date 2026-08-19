-- SSH 环境下使用 Neovim 内置 OSC52 剪贴板 provider
-- Neovim 0.10+ 原生支持，无需第三方插件
-- 配合 LazyVim 默认的 clipboard = "unnamedplus"，yy 即可同步到本地终端
return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.g.clipboard = {
        name = "OSC 52",
        copy = {
          ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
          ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
          ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
          ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
        },
      }
    end,
  },
}
