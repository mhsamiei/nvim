vim.pack.add({
    "https://github.com/folke/trouble.nvim",
})

require("trouble").setup({
    auto_close = true,
})

local map = vim.keymap.set

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", {
    desc = "Diagnostics",
})

map("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>", {
    desc = "Quickfix",
})

map("n", "<leader>xl", "<cmd>Trouble loclist toggle<CR>", {
    desc = "Location list",
})
