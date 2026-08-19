return {
  -- Markdown 远程预览（SSH 环境通过 IP:端口 在本地浏览器访问）
  -- marksman LSP、lint、format 等已由 lang.markdown extra 提供
  {
    "iamcco/markdown-preview.nvim",
    optional = true,
    init = function()
      vim.g.mkdp_open_to_the_world = 1
      vim.g.mkdp_open_ip = "172.17.16.122"
      vim.g.mkdp_port = 8888
      vim.g.mkdp_echo_preview_url = 1
      vim.g.mkdp_browser = "echo"
    end,
  },
}
