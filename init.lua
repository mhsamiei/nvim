vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- LuaRocks
-- luarocks path --local
local luarocks = vim.fn.expand("~/.luarocks")

package.path = package.path
    .. ";" .. luarocks .. "/share/lua/5.1/?.lua"
    .. ";" .. luarocks .. "/share/lua/5.1/?/init.lua"

package.cpath = package.cpath
    .. ";" .. luarocks .. "/lib/lua/5.1/?.so"

-- Plugins
require("core")
require("plugins")
require("config.explorer")
