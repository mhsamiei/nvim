local dap = require("dap")

dap.adapters.delve = {
  type = "server",

  port = "${port}",

  executable = {
    command = "dlv",

    args = {
      "dap",
      "-l",
      "127.0.0.1:${port}",
    },
  },
}

dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },

  {
    type = "delve",
    name = "Debug Package",
    request = "launch",
    program = "${workspaceFolder}",
  },

  {
    type = "delve",
    name = "Debug Test",
    request = "launch",
    mode = "test",
    program = "${file}",
  },

  {
    type = "delve",
    name = "Debug Package Tests",
    request = "launch",
    mode = "test",
    program = "${workspaceFolder}",
  },
}
