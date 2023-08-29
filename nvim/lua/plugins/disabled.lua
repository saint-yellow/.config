local plugins = {
    "voldikss/vim-floaterm",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
}

local M = {}

for k, v in ipairs(plugins) do
    M[k] = {
        v,
        enabled = false,
    }
end

return M
