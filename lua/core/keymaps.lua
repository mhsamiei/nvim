local map = vim.keymap.set

local opts = {
  noremap = true,
  silent = true,
}

-- =========================
-- Insert mode
-- =========================

map("i", "jk", "<Esc>", {
  desc = "Escape",
})

-- =========================
-- Search
-- =========================

map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
  desc = "Clear search highlight",
})

-- =========================
-- Save
-- =========================

map("n", "<C-s>", "<cmd>write<CR>", {
  desc = "Save",
})

map("i", "<C-s>", "<Esc><cmd>write<CR>a", {
  desc = "Save",
})

-- =========================
-- Quit
-- =========================

map("n", "<leader>qq", "<cmd>quit<CR>", {
  desc = "Quit",
})

map("n", "<leader>qa", "<cmd>qa<CR>", {
  desc = "Quit all",
})

-- =========================
-- Windows
-- =========================

map("n", "<C-h>", "<C-w>h", {
  desc = "Move left",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Move down",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Move up",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Move right",
})

map("n", "<leader>wv", "<C-w>v", {
  desc = "Vertical split",
})

map("n", "<leader>ws", "<C-w>s", {
  desc = "Horizontal split",
})

map("n", "<leader>wc", "<C-w>c", {
  desc = "Close window",
})

-- =========================
-- Buffers
-- =========================

map("n", "<leader>bn", "<cmd>bnext<CR>", {
  desc = "Next buffer",
})

map("n", "<leader>bp", "<cmd>bprevious<CR>", {
  desc = "Previous buffer",
})

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
  desc = "Delete buffer",
})

-- =========================
-- Better movement
-- =========================

map("n", "j", "gj", opts)
map("n", "k", "gk", opts)

-- =========================
-- Visual indentation
-- =========================

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- =========================
-- Move selected lines
-- =========================

map("v", "J", ":m '>+1<CR>gv=gv", {
  desc = "Move selection down",
})

map("v", "K", ":m '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

-- =========================
-- Center screen
-- =========================

map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- =========================
-- Terminal
-- =========================
map("n", "<leader>tt", "<cmd>terminal<CR>", {
  desc = "Terminal",
})

map("t", "<Esc><Esc>", "<C-\\><C-n>", {
  desc = "Exit terminal mode",
})

-- =========================
-- Terminal
-- =========================
map("n", "]q", "<cmd>cnext<CR>", {
  desc = "Next quickfix",
})

map("n", "[q", "<cmd>cprev<CR>", {
  desc = "Previous quickfix",
})
