local ok, catppuccin = pcall(require, 'catppuccin')

if not ok then
    return
end

local o = vim.o
local g = vim.g
local cmd = vim.cmd

o.termguicolors = true

g.catppuccin_flavour = 'mocha'
cmd('colorscheme catppuccin')
