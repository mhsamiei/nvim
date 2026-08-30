vim.pack.add({
  "https://github.com/mrcjkb/rustaceanvim",
})

local wk = require("which-key")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    wk.add({
      { "<leader>R", group = "Rust", buffer = 0 },
      {
        "<leader>Rr",
        function()
          -- Run
        end,
        desc = "Run",
        buffer = 0
      },

      {
        "<leader>Rd",
        function()
          -- Debug
        end,
        desc = "Debug",
        buffer = 0
      },

      {
        "<leader>Rt",
        function()
          -- Test
        end,
        desc = "Test",
        buffer = 0
      },

      {
        "<leader>Re",
        function()
          -- Explain error
        end,
        desc = "Explain error",
        buffer = 0
      },

      {
        "<leader>Ra",
        function()
          -- Code action
        end,
        desc = "Code action",
        buffer = 0
      },
    })
  end,
})
