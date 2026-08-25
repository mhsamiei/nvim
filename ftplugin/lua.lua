vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true


-- local map = vim.keymap.set
--
-- local function format_lua()
--     vim.cmd("silent! write")
--
--     vim.fn.jobstart({
--         "stylua",
--         vim.api.nvim_buf_get_name(0),
--     }, {
--         on_exit = function(_, code)
--             if code == 0 then
--                 vim.schedule(function()
--                     vim.cmd("checktime")
--                 end)
--             end
--         end,
--     })
-- end
--
-- map("n", "<leader>lf", format_lua, {
--     buffer = true,
--     desc = "Format Lua",
-- })
