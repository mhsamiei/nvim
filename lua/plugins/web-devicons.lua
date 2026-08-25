vim.pack.add({
    {
        src = "https://github.com/nvim-tree/nvim-web-devicons",
    },
    { 
        src = 'https://github.com/nvim-mini/mini.icons', version = 'stable',
    },
})

require("nvim-web-devicons").setup({
    default = true,
})
