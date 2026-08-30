vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
})

-- blink.cmp must be loaded before this file.
-- local capabilities =vim.lsp.protocol.make_client_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- Default capabilities for all LSP servers.
vim.lsp.config("*", {
  capabilities = capabilities,
})

-- Buffer-local LSP keymaps.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local map = vim.keymap.set

    -- Navigation
    map("n", "gd", vim.lsp.buf.definition, {
      buffer = args.buf,
      desc = "Go to definition",
    })

    map("n", "gD", vim.lsp.buf.declaration, {
      buffer = args.buf,
      desc = "Go to declaration",
    })

    map("n", "gi", vim.lsp.buf.implementation, {
      buffer = args.buf,
      desc = "Go to implementation",
    })

    map("n", "gr", vim.lsp.buf.references, {
      buffer = args.buf,
      desc = "References",
    })

    -- Information
    map("n", "K", vim.lsp.buf.hover, {
      buffer = args.buf,
      desc = "Hover",
    })

    -- Refactoring
    map("n", "<leader>lr", vim.lsp.buf.rename, {
      buffer = args.buf,
      desc = "Rename",
    })

    map("n", "<leader>la", vim.lsp.buf.code_action, {
      buffer = args.buf,
      desc = "Code action",
    })

    -- -- Formatting
    -- map("n", "<leader>lf", function()
    --     vim.lsp.buf.format({
    --         async = true,
    --     })
    -- end, {
    --     buffer = args.buf,
    --     desc = "Format",
    -- })

    -- Diagnostics
    map("n", "<leader>ld", vim.diagnostic.open_float, {
      buffer = args.buf,
      desc = "Line diagnostics",
    })
  end,
})

require("config.lsp")
