vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
        autoImportCompletions = true,
        diagnosticMode = "workspace",
      },
    },
  },
})

vim.lsp.enable("basedpyright")

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      logLevel = "info",
    },
  },
})

vim.lsp.enable("ruff")
