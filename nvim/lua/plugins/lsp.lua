local mason_packages_path = vim.fn.stdpath("data") .. "/mason/packages"
local lspconfig = require("lspconfig")

local java_config = function()
    local config = require("lspconfig.server_configurations.jdtls").default_config
    local jdtls_path = mason_packages_path .. "/jdtls"
    local lombok_path = jdtls_path .. "/lombok.jar"
    local config_path = jdtls_path .. "/config_linux"

    config.cmd = {
        jdtls_path .. "/bin/jdtls",
        "-configuration" .. config_path,
        "--jvm_arg=-javaagent:" .. lombok_path,
    }
    lspconfig.jdtls.setup(config)
end

local go_config = function()
    local config = require("lspconfig.server_configurations.gopls").default_config

    config.settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        }
    }
    lspconfig.gopls.setup(config)
end

local python_config = function ()
    local config = require("lspconfig.server_configurations.ruff_lsp").default_config
    lspconfig.ruff_lsp.setup(config)
end

local lua_config = function()
    local config = require("lspconfig.server_configurations.lua_ls").default_config
    lspconfig.lua_ls.setup(config)
end

return {
    "neovim/nvim-lspconfig",
    lazy = true,
    config = function()
        java_config()
        go_config()
        python_config()
        lua_config()
    end,
}
