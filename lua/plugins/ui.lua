vim.pack.add({
  "https://github.com/folke/which-key.nvim",
  "https://github.com/nvim-lualine/lualine.nvim",
})

local wk = require("which-key")

wk.add({
  { "<leader>b", group = "Buffer" },
  { "<leader>d", group = "Debug" },
  { "<leader>f", group = "Find" },
  { "<leader>g", group = "Git" },
  { "<leader>l", group = "LSP" },
  { "<leader>q", group = "Quit" },
  { "<leader>t", group = "Treesitter" },
  { "<leader>w", group = "Window" },
  { "<leader>x", group = "Diagnostics" },
})


-- local function project_file()
--   local file = vim.fn.expand("%:p")
--
--   if file == "" then
--     return ""
--   end
--
--   local cwd = vim.fn.getcwd()
--   local project = vim.fn.fnamemodify(cwd, ":t")
--   local relative = vim.fn.fnamemodify(file, ":.")
--
--   return project .. "/" .. relative
-- end
--

local function project_file()
  local file = vim.fn.expand("%:p")

  if file == "" then
    return ""
  end

  return vim.fn.fnamemodify(file, ":.")
end


require("lualine").setup({
  options = {
    globalstatus = true,

    section_separators = "",
    component_separators = "",

    refresh = {
      statusline = 100,
      refresh_time = 100,
    },
  },

  sections = {
    lualine_a = {
      "mode",
    },

    lualine_b = {
      "branch",
      "diff",
      "diagnostics",
    },

    lualine_c = {
      -- {
      --   "filename",
      --   path = 0,
      -- },
      project_file,
    },

    lualine_x = {
      "encoding",
      "fileformat",

      {
        "lsp_status",

        icon = "",

        symbols = {
          spinner = {
            "⠋",
            "⠙",
            "⠹",
            "⠸",
            "⠼",
            "⠴",
            "⠦",
            "⠧",
            "⠇",
            "⠏",
          },

          done = "✓",

          separator = " ",
        },

        ignore_lsp = {},

        show_name = true,
      },

      "filetype",
    },

    lualine_y = {
      "progress",
    },

    lualine_z = {
      "location",
    },
  },
})
