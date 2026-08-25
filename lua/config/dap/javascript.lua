local dap = require("dap")

local js_debug = vim.fn.expand(
    "~/.local/share/nvim/debug/js-debug/src/dapDebugServer.js"
)

-- JavaScript / TypeScript debugger
dap.adapters["pwa-node"] = {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",

    executable = {
        command = "node",
        args = {
            js_debug,
            "${port}",
        },
    },
}

-- Browser debugger
dap.adapters["pwa-chrome"] = {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",

    executable = {
        command = "node",
        args = {
            js_debug,
            "${port}",
        },
    },
}


----------------------------------------------------------------------
-- JavaScript
----------------------------------------------------------------------

dap.configurations.javascript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch current file",

        program = "${file}",

        cwd = "${workspaceFolder}",

        sourceMaps = true,
    },

    {
        type = "pwa-node",
        request = "launch",
        name = "Launch npm dev",

        runtimeExecutable = "npm",

        runtimeArgs = {
            "run",
            "dev",
        },

        cwd = "${workspaceFolder}",

        console = "integratedTerminal",

        sourceMaps = true,
    },

    {
        type = "pwa-node",
        request = "launch",
        name = "Launch npm start",

        runtimeExecutable = "npm",

        runtimeArgs = {
            "run",
            "start",
        },

        cwd = "${workspaceFolder}",

        console = "integratedTerminal",

        sourceMaps = true,
    },
}


----------------------------------------------------------------------
-- TypeScript
----------------------------------------------------------------------

dap.configurations.typescript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch current file",

        program = "${file}",

        cwd = "${workspaceFolder}",

        sourceMaps = true,

        runtimeExecutable = "node",
    },

    {
        type = "pwa-node",
        request = "launch",
        name = "Launch npm dev",

        runtimeExecutable = "npm",

        runtimeArgs = {
            "run",
            "dev",
        },

        cwd = "${workspaceFolder}",

        console = "integratedTerminal",

        sourceMaps = true,
    },

    {
        type = "pwa-node",
        request = "launch",
        name = "Launch npm start",

        runtimeExecutable = "npm",

        runtimeArgs = {
            "run",
            "start",
        },

        cwd = "${workspaceFolder}",

        console = "integratedTerminal",

        sourceMaps = true,
    },
}


----------------------------------------------------------------------
-- React / JSX
----------------------------------------------------------------------

dap.configurations.javascriptreact = {
    {
        type = "pwa-chrome",
        request = "launch",
        name = "Launch React",

        url = "http://localhost:5173",

        webRoot = "${workspaceFolder}",
    },
}


----------------------------------------------------------------------
-- React / TSX
----------------------------------------------------------------------

dap.configurations.typescriptreact = {
    {
        type = "pwa-chrome",
        request = "launch",
        name = "Launch React",

        url = "http://localhost:5173",

        webRoot = "${workspaceFolder}",
    },
}
