-- vim.lsp.config("jdtls", {
--     settings = {
--         java = {
--             format = {
--                 enabled = false,
--             },
--
--             configuration = {
--                 updateBuildConfiguration = "interactive",
--             },
--         },
--     },
-- })

vim.lsp.config("jdtls", {
    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "Java-21",
                        path = "/opt/java/jdk-21.0.12",
                        default = true,
                    },

                    {
                        name = "Java-24",
                        path = "/opt/java/jdk-25.0.4",
                    },
                },
            },
        },
    },
})

vim.lsp.enable("jdtls")
