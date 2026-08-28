return {
  "elmcgill/springboot-nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    local springboot = require("springboot-nvim")
    springboot.setup({})

    -- 设置快捷键
    vim.keymap.set("n", "<leader>Jr", springboot.boot_run, { desc = "Spring Boot Run" })
  end,
}
