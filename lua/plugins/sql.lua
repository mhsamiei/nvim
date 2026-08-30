-- lua/plugins/sql.lua

vim.pack.add({
  "https://github.com/nanotee/sqls.nvim",
})

local connections = require("config.sql")

vim.lsp.config("sqls", {
  cmd = { "sqls" },

  filetypes = {
    "sql",
  },

  root_markers = {
    ".sqls",
    ".git",
  },

  settings = {
    sqls = {
      connections = connections,
    },
  },
})

vim.lsp.enable("sqls")
