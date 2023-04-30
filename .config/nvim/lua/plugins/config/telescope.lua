local ok, telescope = pcall(require, 'telescope')

if not ok then
    return
end

local telescope_builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ff', telescope_builtin.find_files)

