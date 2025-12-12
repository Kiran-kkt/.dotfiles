return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                inlayHints = {
                  variableTypes = true,
                  functionReturnTypes = true,
                  parameterNames = true,
                  parameterTypes = true,
                },
              },
            },
          },
        },
        ruff = {},
      },
      setup = {
        ruff = function(_, opts)
          local lspconfig = require("lspconfig")
          lspconfig.ruff.setup(vim.tbl_deep_extend("force", opts, {
            on_attach = function(client, bufnr)
              client.server_capabilities.hoverProvider = false
            end,
          }))
          return true
        end,
      },
    },
  },
}
