local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local general = augroup("General", {
    clear = true,
})

-- Highlight yank
autocmd("TextYankPost", {
    group = general,
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Restore cursor position
autocmd("BufReadPost", {
    group = general,
    callback = function(args)
        local mark = vim.api.nvim_buf_get_mark(args.buf, '"')

        if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(args.buf) then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Don't auto-comment new lines
autocmd("FileType", {
    group = general,
    callback = function()
        vim.opt_local.formatoptions:remove({
            "c",
            "r",
            "o",
        })
    end,
})

-- Close some temporary windows with q
autocmd("FileType", {
    group = general,
    pattern = {
        "help",
        "qf",
        "lspinfo",
        "man",
        "checkhealth",
    },
    callback = function(args)
        vim.bo[args.buf].buflisted = false

        vim.keymap.set("n", "q", "<cmd>close<CR>", {
            buffer = args.buf,
            silent = true,
        })
    end,
})
