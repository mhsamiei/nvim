vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = false


vim.api.nvim_buf_create_user_command(0, "GoTest", function()
  vim.cmd("botright split | terminal go test ./...")
end, {
  desc = "Run Go tests",
})
