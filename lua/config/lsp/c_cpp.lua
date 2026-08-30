vim.lsp.config("clangd", {
  cmd = {
    "clangd",

    -- Project-wide background index
    "--background-index",

    -- Better completion information
    "--completion-style=detailed",

    -- Let clangd suggest/include headers
    "--header-insertion=iwyu",
    "--header-insertion-decorators",

    -- Enable clang-tidy diagnostics
    "--clang-tidy",
  },

  root_markers = {
    "compile_commands.json",
    "compile_flags.txt",
    ".clangd",
    "CMakeLists.txt",
    ".git",
  },
})

vim.lsp.enable("clangd")
