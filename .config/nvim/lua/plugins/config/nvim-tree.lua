local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
end

local keymap = vim.keymap

keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { silent = true })

nvim_tree.setup {
    git = {
        enable = true,
        ignore = false,
    },
    filters = {
        custom = { '.git' },
    },
}
