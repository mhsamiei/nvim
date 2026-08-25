-- vim.pack.add({
--     "https://github.com/folke/which-key.nvim",
--     "https://github.com/nvim-lualine/lualine.nvim",
-- })
--
-- --require("which-key").setup({})
-- local wk = require("which-key")
--
-- wk.add({
--     { "<leader>b", group = "Buffer" },
--     { "<leader>d", group = "Debug" },
--     { "<leader>f", group = "Find" },
--     { "<leader>g", group = "Git" },
--     { "<leader>l", group = "LSP" },
--     { "<leader>q", group = "Quit" },
--     { "<leader>t", group = "Treesitter" },
--     { "<leader>w", group = "Window" },
--     { "<leader>x", group = "Diagnostics" },
-- })
--
-- require("lualine").setup({
--     options = {
--         globalstatus = true,
--         section_separators = "",
--         component_separators = "",
--     },
-- })
--
vim.pack.add({
    "https://github.com/folke/which-key.nvim",
    "https://github.com/nvim-lualine/lualine.nvim",
})

local wk = require("which-key")

wk.add({
    { "<leader>b", group = "Buffer" },
    { "<leader>d", group = "Debug" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>l", group = "LSP" },
    { "<leader>q", group = "Quit" },
    { "<leader>t", group = "Treesitter" },
    { "<leader>w", group = "Window" },
    { "<leader>x", group = "Diagnostics" },
})
require("lualine").setup({
    options = {
        globalstatus = true,

        section_separators = "",
        component_separators = "",

        refresh = {
            statusline = 100,
            refresh_time = 100,
        },
    },

    sections = {
        lualine_a = {
            "mode",
        },

        lualine_b = {
            "branch",
            "diff",
            "diagnostics",
        },

        lualine_c = {
            {
                "filename",
                path = 0,
            },
        },

        lualine_x = {
            "encoding",
            "fileformat",

            {
                "lsp_status",

                icon = "",

                symbols = {
                    spinner = {
                        "⠋",
                        "⠙",
                        "⠹",
                        "⠸",
                        "⠼",
                        "⠴",
                        "⠦",
                        "⠧",
                        "⠇",
                        "⠏",
                    },

                    done = "✓",

                    separator = " ",
                },

                ignore_lsp = {},

                show_name = true,
            },

            "filetype",
        },

        lualine_y = {
            "progress",
        },

        lualine_z = {
            "location",
        },
    },
})
