vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30

-- Open files in the previous/right window
vim.g.netrw_browse_split = 4

vim.keymap.set("n", "<leader>e", function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)

    if vim.bo[buf].filetype == "netrw" then
      vim.api.nvim_win_close(win, true)
      return
    end
  end

  vim.cmd("topleft vsplit")
  vim.cmd("vertical resize 30")
  vim.cmd("Explore")
end, { desc = "Toggle Explorer" })
