vim.lsp.config("yamlls", {
    capabilities = require("blink.cmp").get_lsp_capabilities(),

    settings = {
        yaml = {
            validate = true,
            hover = true,
            completion = true,
        },
    },
})

vim.lsp.enable("yamlls")
