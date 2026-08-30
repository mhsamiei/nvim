local opt = vim.opt

-- =========================
-- General
-- =========================

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.hidden = true
opt.confirm = true

-- =========================
-- UI
-- =========================

opt.number = true
opt.relativenumber = true

opt.cursorline = true
opt.signcolumn = "yes"

opt.termguicolors = true

opt.showmode = false
opt.laststatus = 3

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.cmdheight = 1

-- =========================
-- Indentation
-- =========================

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

opt.smartindent = true
opt.autoindent = true

-- =========================
-- Search
-- =========================

opt.ignorecase = true
opt.smartcase = true

opt.incsearch = true
opt.hlsearch = true

-- =========================
-- Editing
-- =========================

opt.wrap = false
opt.linebreak = true

opt.backspace = { "indent", "eol", "start" }

opt.swapfile = false
opt.backup = false
opt.writebackup = false

opt.undofile = true
opt.undolevels = 10000

opt.updatetime = 250

-- =========================
-- Completion
-- =========================

opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}

opt.pumheight = 10

-- =========================
-- Splits
-- =========================

opt.splitright = true
opt.splitbelow = true

-- =========================
-- Folding
-- =========================

opt.foldmethod = "syntax"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99

-- =========================
-- Performance
-- =========================

opt.timeout = true
opt.timeoutlen = 400

-- =========================
-- Files
-- =========================

opt.fileformats = { "unix", "dos" }

-- =========================
-- Wildmenu
-- =========================

opt.wildmode = { "longest:full", "full" }
opt.wildmenu = true

-- =========================
-- List characters
-- =========================

opt.list = true
opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
}
