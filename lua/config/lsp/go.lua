vim.lsp.config("gopls", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),

  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,

      analyses = {
        unusedparams = true,
        shadow = true,
      },

      usePlaceholders = true,
      completeUnimported = true,
    },
  },
})

vim.lsp.enable("gopls")
