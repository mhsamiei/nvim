vim.pack.add({
    "https://github.com/mfussenegger/nvim-dap-python",
})


local dap_python = require("dap-python")

dap_python.setup(
    vim.fn.expand("~/.local/share/nvim/python-debug/bin/python")
)


vim.keymap.set("n", "<leader>dt", function()
    dap_python.test_method()
end, {
    desc = "Debug Python test",
})

vim.keymap.set("n", "<leader>dT", function()
    dap_python.test_class()
end, {
    desc = "Debug Python test class",
})
