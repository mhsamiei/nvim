vim.pack.add({
  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.cmp",
})

require("blink.cmp").setup({
  keymap = {
    preset = "default",
    ["<CR>"] = { "accept", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 300,
    },
    menu = {
      border = "rounded",
    },
    list = {
      selection = {
        preselect = true,
        auto_insert = false,
      },
    },
  },

  sources = {
    default = {
      "lsp",
      "path",
      "snippets",
      "buffer",
    },
  },

  fuzzy = {
    -- implementation = "lua",
    implementation = "prefer_rust",
  },
  signature = {
    enabled = true,
  },
})
