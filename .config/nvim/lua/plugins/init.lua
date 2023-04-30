local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
if vim.fn.empty(vim.fn.glob(path)) > 0 then
    vim.fn.system {
	'git',
	'clone',
	'--depth=1',
	'https://github.com/savq/paq-nvim.git',
	path,
    }
end

require'paq' {
    -- languages
    'fatih/vim-go',
    'mattn/emmet-vim',
    'nvim-neorg/neorg',
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    },

    -- appearence
    'akinsho/bufferline.nvim',
    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-tree.lua',
    'glepnir/dashboard-nvim',

    -- tools
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',

    -- lsp and completion
    'neovim/nvim-lspconfig',
    {
        'ms-jpq/coq_nvim',
        'ms-jpq/coq.artifacts',
        'ms-jpq/coq.thirdparty',
        run = ':COQdeps'
    },

    -- themes and icons
    {
        'catppuccin/nvim',
        as = 'catppuccin'
    },
    'kyazdani42/nvim-web-devicons',
}

require('plugins.config.neorg')
require('plugins.config.treesitter')
require('plugins.config.bufferline')
require('plugins.config.lualine')
require('plugins.config.nvim-tree')
require('plugins.config.dashboard')
require('plugins.config.telescope')
require('plugins.config.lspconfig')
require('plugins.config.catppuccin')

