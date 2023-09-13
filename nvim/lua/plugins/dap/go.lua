return {
    "leoluz/nvim-dap-go",
    keys = {
        {
            "<leader>dgt",
            function()
                require("dap-go").debug_test()
            end,
            desc = "Debug go test",
        },
        {
            "<leader>dgl",
            function()
                require("dap-go").debug_last()
            end,
            desc = "Debug last go test",
        },
    },
    filetypes = {
        "go",
    },
    dependencies = {
        "mfussenegger/nvim-dap",
    },
    config = function()
        require("dap-go").setup({
            dap_configurations = {
                {
                    type = "go",
                    name = "Attach remote",
                    mode = "remote",
                    request = "attach",
                },
            },
            delve = {
                path = "dlv",
                initialize_timeout_sec = 20,
                port = "${port}",
                args = {},
                build_flags = "",
            },
        })
    end,
}
