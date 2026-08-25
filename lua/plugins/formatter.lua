vim.pack.add({
    "https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },

        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        markdown = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        yaml = { "prettier" },
        yml = { "prettier" },
        toml = { "taplo" },
        bash = { "shfmt" },
        sh = { "shfmt" },
        lua = { "stylue" },
    },

    format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
        lsp_format = "fallback",
        -- lsp_format = "never",
    },
})

vim.keymap.set("n", "<leader>lf", function()
    require("conform").format({
        async = true,
        lsp_format = "fallback",
    })
end, {
    desc = "Format buffer",
})
