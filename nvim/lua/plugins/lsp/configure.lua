return {
    "neovim/nvim-lspconfig",
    dependencies = {
        require("plugins.lsp.servers.jsonls").dependencies,
    },
    ---@class PluginLspOpts
    opts = {
        ---@type lspconfig.options
        servers = {
            gopls = require("plugins.lsp.servers.gopls").config,
            pyright = require("plugins.lsp.servers.pyright").config,
            ruff_lsp = require("plugins.lsp.servers.ruff_lsp").config,
            jsonls = require("plugins.lsp.servers.jsonls").config,
        },
        setup = {
            gopls = require("plugins.lsp.servers.gopls").setup,
            ruff_lsp = require("plugins.lsp.servers.ruff_lsp").setup,
        },
    },
}
