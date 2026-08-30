vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

local telescope = require("telescope")

telescope.setup({
  defaults = {
    layout_strategy = "horizontal",

    layout_config = {
      horizontal = {
        preview_width = 0.55,
      },
    },

    sorting_strategy = "ascending",

    prompt_prefix = "   ",
    selection_caret = "  ",

    file_ignore_patterns = {
      "%.git/",
      "node_modules/",
      "target/",
      "build/",
      "dist/",
    },
  },
})

-- ==================
local builtin = require("telescope.builtin")
local map = vim.keymap.set

map("n", "<leader>ff", builtin.find_files, {
  desc = "Find files",
})

map("n", "<leader>fg", builtin.live_grep, {
  desc = "Live grep",
})

map("n", "<leader>fb", builtin.buffers, {
  desc = "Buffers",
})

map("n", "<leader>fh", builtin.help_tags, {
  desc = "Help",
})

map("n", "<leader>fr", builtin.oldfiles, {
  desc = "Recent files",
})

map("n", "<leader>fc", builtin.commands, {
  desc = "Commands",
})
