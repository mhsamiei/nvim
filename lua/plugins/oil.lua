vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
    default_file_explorer = true,

    columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
    },

    view_options = {
        show_hidden = true,
    },

    float = {
        padding = 2,
        max_width = 120,
        max_height = 30,

        border = "rounded",
    },
})

-- ==================
local map = vim.keymap.set
map("n", "<leader>e", "<cmd>Oil<CR>", {
    desc = "File explorer",
})
