vim.lsp.config("lua_ls", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),

  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },

      diagnostics = {
        globals = {
          "vim",
        },
      },

      workspace = {
        checkThirdParty = false,

        library = {
          vim.env.VIMRUNTIME,
        },
      },

      telemetry = {
        enable = false,
      },

      completion = {
        callSnippet = "Replace",
      },
    },
  },
})

vim.lsp.enable("lua_ls")
