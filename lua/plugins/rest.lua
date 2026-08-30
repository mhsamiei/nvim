vim.pack.add({
  "https://github.com/rest-nvim/rest.nvim",
  "https://github.com/j-hui/fidget.nvim",

  -- use command luarocks to install
  -- luarocks --local install mimetypes
  -- luarocks --local install xml2lua

  -- "https://github.com/lunarmodules/lua-mimetypes",
  -- "https://github.com/manoelcampos/xml2lua",
})

vim.g.rest_nvim = {
  request = {
    skip_ssl_verification = false,
  },

  response = {
    hooks = {
      format = true,
    },
  },

  ui = {
    winbar = true,
    keybinds = {
      prev = "H",
      next = "L",
    },
  },
}

-- vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>", { desc = "Run HTTP request", })
-- vim.keymap.set("n", "<leader>rl", "<cmd>Rest last<cr>", { desc = "Run last HTTP request", })
-- vim.keymap.set("n", "<leader>ro", "<cmd>Rest open<cr>", { desc = "Open HTTP response", })
local wk = require("which-key")

wk.add({
  { "<leader>r",  group = "REST" },
  { "<leader>rr", "<cmd>Rest run<cr>",  desc = "Run request" },
  { "<leader>rl", "<cmd>Rest last<cr>", desc = "Run last request" },
  { "<leader>ro", "<cmd>Rest open<cr>", desc = "Open response" },
})
