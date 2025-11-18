return {
  "harrisoncramer/gitlab.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  build = "make", -- requires Go installed
  config = function()
    require("gitlab").setup()
  end,
}
