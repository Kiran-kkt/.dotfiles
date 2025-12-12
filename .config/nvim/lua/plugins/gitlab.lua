return {
  "harrisoncramer/gitlab.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "stevearc/dressing.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  enabled = vim.fn.executable("go") == 1,
  build = function()
    require("gitlab.server").build(true)
  end,
  config = function()
    require("gitlab").setup({
      gitlab_url = "https://code.charge-v.com",
      auth_provider = function()
        return os.getenv("GITLAB_TOKEN")
      end,
    })
  end,
}
