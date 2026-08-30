vim.lsp.config("taplo", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.enable("taplo")
