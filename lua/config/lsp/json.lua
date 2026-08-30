vim.lsp.config("jsonls", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),

  settings = {
    json = {
      validate = {
        enable = true,
      },
    },
  },
})

vim.lsp.enable("jsonls")
