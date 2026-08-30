-- after/ftplugin/sql.lua

-- =========================================================
-- SQL buffer options
-- =========================================================

vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2

vim.opt_local.wrap = false

vim.opt_local.commentstring = "-- %s"


-- =========================================================
-- SQL keymaps
-- =========================================================

local map = vim.keymap.set

-- Execute current query
map("n", "<leader>se", "<cmd>SqlsExecuteQuery<CR>", {
  buffer = true,
  desc = "SQL: Execute query",
})

-- Execute selected query
map("v", "<leader>se", "<cmd>SqlsExecuteQuery<CR>", {
  buffer = true,
  desc = "SQL: Execute selection",
})

-- Execute query vertically
map("n", "<leader>sv", "<cmd>SqlsExecuteQueryVertical<CR>", {
  buffer = true,
  desc = "SQL: Execute query vertically",
})

-- Show schemas
map("n", "<leader>ss", "<cmd>SqlsShowSchemas<CR>", {
  buffer = true,
  desc = "SQL: Show schemas",
})

-- Show databases
map("n", "<leader>sd", "<cmd>SqlsShowDatabases<CR>", {
  buffer = true,
  desc = "SQL: Show databases",
})

-- Show connections
map("n", "<leader>sc", "<cmd>SqlsShowConnections<CR>", {
  buffer = true,
  desc = "SQL: Show connections",
})

map("n", "<leader>sb", "<cmd>SqlsSwitchDatabase<CR>", {
  buffer = true,
  desc = "SQL: Switch database",
})

map("n", "<leader>sx", "<cmd>SqlsSwitchConnection<CR>", {
  buffer = true,
  desc = "SQL: Switch connection",
})
