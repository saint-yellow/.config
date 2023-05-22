local mason_packages_path = vim.fn.stdpath("data") .. "/mason/packages"
local lspconfig = require("lspconfig")

local java_config = function()
    local defatul_config = require("lspconfig.server_configurations.jdtls").default_config
    local jdtls_path = mason_packages_path .. "/jdtls"
    local lombok_path = jdtls_path .. "/lombok.jar"

    defatul_config.cmd = {
        jdtls_path .. "/bin/jdtls",
        "--jvm_args=-javaagent:" .. lombok_path,
    }
    lspconfig.jdtls.setup(defatul_config)
end

return {
    "neovim/nvim-lspconfig",
    config = function()
        java_config()
    end,
}
