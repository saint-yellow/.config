return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            go = { "golangci-lint" },
            lua = { "luacheck" },
        }
    end,
}
