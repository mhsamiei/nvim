local dap = require("dap")

dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = {
        "-i",
        "dap",
    },
}

dap.configurations.c = {
    {
        name = "Launch C",
        type = "gdb",
        request = "launch",

        program = function()
            return vim.fn.input(
                "Executable: ",
                vim.fn.getcwd() .. "/build/",
                "file"
            )
        end,

        cwd = "${workspaceFolder}",

        stopAtBeginningOfMain = false,

        runInTerminal = false,
    },
}

dap.configurations.cpp = {
    {
        name = "Launch C++",
        type = "gdb",
        request = "launch",

        program = function()
            return vim.fn.input(
                "Executable: ",
                vim.fn.getcwd() .. "/build/",
                "file"
            )
        end,

        cwd = "${workspaceFolder}",

        stopAtBeginningOfMain = false,

        runInTerminal = false,
    },
}
