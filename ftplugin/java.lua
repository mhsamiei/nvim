-- ============================================================
-- Indentation
-- ============================================================

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.bo.expandtab = true

vim.bo.textwidth = 120

vim.opt_local.colorcolumn = "120"

vim.opt_local.autoindent = true
vim.opt_local.smartindent = false

vim.opt_local.cindent = false

vim.opt_local.formatoptions:remove({
  "c",
  "r",
  "o",
})

-- ============================================================
-- Java LSP / DAP / Test
-- ============================================================

local java = require("java")

-- ============================================================
-- Build
-- ============================================================

vim.keymap.set("n", "<leader>jb", function()
  java.build.build_workspace()
end, {
  buffer = true,
  desc = "Java build workspace",
})

vim.keymap.set("n", "<leader>jc", function()
  java.build.clean_workspace()
end, {
  buffer = true,
  desc = "Java clean workspace",
})

-- ============================================================
-- Run
-- ============================================================

vim.keymap.set("n", "<leader>jr", function()
  java.runner.built_in.run_app({})
end, {
  buffer = true,
  desc = "Java run application",
})

vim.keymap.set("n", "<leader>js", function()
  java.runner.built_in.stop_app()
end, {
  buffer = true,
  desc = "Java stop application",
})

vim.keymap.set("n", "<leader>jl", function()
  java.runner.built_in.toggle_logs()
end, {
  buffer = true,
  desc = "Java toggle logs",
})

-- ============================================================
-- Tests
-- ============================================================

vim.keymap.set("n", "<leader>jt", function()
  java.test.run_current_method()
end, {
  buffer = true,
  desc = "Java test current method",
})

vim.keymap.set("n", "<leader>jT", function()
  java.test.run_current_class()
end, {
  buffer = true,
  desc = "Java test current class",
})

vim.keymap.set("n", "<leader>ja", function()
  java.test.run_all_tests()
end, {
  buffer = true,
  desc = "Java test all",
})

-- ============================================================
-- Debug tests
-- ============================================================

vim.keymap.set("n", "<leader>jdt", function()
  java.test.debug_current_method()
end, {
  buffer = true,
  desc = "Java debug current method",
})

vim.keymap.set("n", "<leader>jdT", function()
  java.test.debug_current_class()
end, {
  buffer = true,
  desc = "Java debug current class",
})

vim.keymap.set("n", "<leader>jda", function()
  java.test.debug_all_tests()
end, {
  buffer = true,
  desc = "Java debug all tests",
})

-- ============================================================
-- Profiles
-- ============================================================

vim.keymap.set("n", "<leader>jp", function()
  java.profile.ui()
end, {
  buffer = true,
  desc = "Java profiles",
})

-- ============================================================
-- Refactoring
-- ============================================================

vim.keymap.set("n", "<leader>jrv", function()
  java.refactor.extract_variable()
end, {
  buffer = true,
  desc = "Java extract variable",
})

vim.keymap.set("n", "<leader>jrc", function()
  java.refactor.extract_constant()
end, {
  buffer = true,
  desc = "Java extract constant",
})

vim.keymap.set("n", "<leader>jrm", function()
  java.refactor.extract_method()
end, {
  buffer = true,
  desc = "Java extract method",
})

vim.keymap.set("n", "<leader>jrf", function()
  java.refactor.extract_field()
end, {
  buffer = true,
  desc = "Java extract field",
})
