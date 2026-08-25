vim.pack.add({
    "https://github.com/mfussenegger/nvim-dap",
    "https://github.com/rcarriga/nvim-dap-ui",
    "https://github.com/nvim-neotest/nvim-nio",
})

local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

-- ==================
local map = vim.keymap.set
map("n", "<leader>db", dap.toggle_breakpoint, {
    desc = "Toggle breakpoint",
})

map("n", "<leader>dc", dap.continue, {
    desc = "Continue",
})

map("n", "<leader>do", dap.step_over, {
    desc = "Step over",
})

map("n", "<leader>di", dap.step_into, {
    desc = "Step into",
})

map("n", "<leader>dO", dap.step_out, {
    desc = "Step out",
})

map("n", "<leader>dr", dap.restart, {
    desc = "Restart",
})

map("n", "<leader>dq", dap.terminate, {
    desc = "Terminate",
})

map("n", "<leader>du", dapui.toggle, {
    desc = "Toggle DAP UI",
})

require("config.dap")
