vim.pack.add({
  "https://github.com/lewis6991/gitsigns.nvim",
})

require("gitsigns").setup({
  signs = {
    add = {
      text = "│",
    },

    change = {
      text = "│",
    },

    delete = {
      text = "_",
    },

    topdelete = {
      text = "‾",
    },

    changedelete = {
      text = "~",
    },
  },

  current_line_blame = false,
})

-- ==================
local map = vim.keymap.set
map("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", {
  desc = "Toggle blame",
})

map("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", {
  desc = "Diff",
})

map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {
  desc = "Preview hunk",
})

map("n", "]g", "<cmd>Gitsigns next_hunk<CR>", {
  desc = "Next hunk",
})

map("n", "[g", "<cmd>Gitsigns prev_hunk<CR>", {
  desc = "Previous hunk",
})
