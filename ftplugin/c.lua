-- pcall(vim.treesitter.start)


vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.bo.textwidth = 120

vim.opt_local.colorcolumn = "120"
vim.keymap.set("n", "<leader>cf", function()
  vim.lsp.buf.format({
    async = true,
  })
end, {
  buffer = true,
  desc = "Format C/C++",
})


local map = vim.keymap.set

map("n", "<leader>cb", function()
  vim.cmd("CMakeBuild")
end, {
  desc = "C/C++ build",
})

map("n", "<leader>cc", function()
  vim.cmd("CMakeConfigure")
end, {
  desc = "C/C++ configure",
})

map("n", "<leader>ct", function()
  vim.cmd("CMakeTest")
end, {
  desc = "C/C++ test",
})

require("config.cmake")
