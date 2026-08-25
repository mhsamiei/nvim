vim.pack.add({
    "https://github.com/hat0uma/csvview.nvim",
})

require("csvview").setup({
    parser = {
        delimiter = {
            ft = {
                csv = ",",
            },
        },
    },

    view = {
        display_mode = "border",
    },
})
