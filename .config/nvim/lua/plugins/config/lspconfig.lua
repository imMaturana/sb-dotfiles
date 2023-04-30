local ok, lspconfig = pcall(require, 'lspconfig')
local disable_lsp = os.getenv('NVIM_DISABLE_LSP')

if not ok or disable_lsp then
    return
end

local servers = {
    'gopls',
    'rust_analyzer',
    'pyright',
    'zls',
    'vls',
}

for _, server in pairs(servers) do
    lspconfig[server].setup {}
end
