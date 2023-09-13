local M = {}

M.config = {
    mason = false,
}

M.setup = function()
    require("lazyvim.util").on_attach(function(client, _)
        if client.name == "ruff_lsp" then
            client.server_capabilities.hoverProvider = false
        end
    end)
end

return M
