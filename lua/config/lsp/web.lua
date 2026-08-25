-- vim.pack.add({
--     "https://github.com/neovim/nvim-lspconfig",
-- })
--
vim.lsp.config("emmet_language_server", {
    filetypes = {
        "html",
        "css",
        "scss",
        "javascriptreact",
        "typescriptreact",
        "vue",
        "svelte",
        "astro",
    },

    init_options = {
        showAbbreviationSuggestions = true,

        showExpandedAbbreviation = "always",

        showSuggestionsAsSnippet = true,
    },
})

vim.lsp.enable("emmet_language_server")
