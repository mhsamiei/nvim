vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
})

local treesitter = require("nvim-treesitter")

treesitter.setup({
  install_dir = vim.fn.stdpath("data") .. "/site",
})

treesitter.install({
  "lua",
  "vim",
  "vimdoc",

  "c",
  "cpp",
  "python",
  "go",
  "gomod",
  "gosum",
  "gowork",

  "json",
  "yaml",
  "toml",
  "bash",
  "java",
  "sql",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "vim",
    "vimdoc",

    "c",
    "cpp",
    "python",
    "go",
    "gomod",
    "gosum",
    "gowork",

    "json",
    "jsonc",
    "yaml",
    "toml",
    "bash",
    "sh",
    "java",
    "sql",
  },

  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
    vim.bo[args.buf].syntax = "ON"
  end,
})
