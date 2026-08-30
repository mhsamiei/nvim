require("plugins.web-devicons")
require("plugins.treesitter")
require("plugins.telescope")

-- blink must load before anything that explicitly requires it
require("plugins.completion")
require("plugins.lsp")
require("plugins.formatter")
require("plugins.lint")
require("plugins.dap")

require("plugins.git")
require("plugins.ui")
require("plugins.rest")
require("plugins.diagnostics")
require("plugins.csv")

require("plugins.rust")
require("plugins.sql")
require("plugins.java")
