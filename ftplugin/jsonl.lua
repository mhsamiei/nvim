vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.bo.commentstring = "// %s"

-- Expand JSONL for editing
vim.keymap.set("n", "<leader>je", function()
	vim.cmd("%!jq .")
end, {
	buffer = true,
	silent = true,
	desc = "Expand JSONL",
})

-- Compact JSONL manually
vim.keymap.set("n", "<leader>jc", function()
	vim.cmd("%!jq -c .")
end, {
	buffer = true,
	silent = true,
	desc = "Compact JSONL",
})
