return {
  -- 1. 添加 compiler.nvim 插件
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = {
      "stevearc/overseer.nvim", -- 任务运行器，compiler.nvim 依赖它
      "nvim-telescope/telescope.nvim", -- (可选) 用于更友好的任务选择界面
    },
    opts = {}, -- 这里可以放置你需要的配置选项
  },
  -- 2. 添加其依赖的任务运行器 overseer.nvim
  {
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd", -- 推荐使用一个稳定的版本
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
