return {
    {
        "mfussenegger/nvim-dap",
        keys = {
            {
                "<leader>db",
                "<cmd>DapToggleBreakpoint<cr>",
                desc = "Add breakpoint at line",
            },
            {
                "<leader>dus",
                function()
                    local widgets = require("dap.ui.widgets")
                    local sidebar = widgets.sidebar(widgets.scopes)
                    sidebar.open()
                end,
                desc = "Open debugging sidebar",
            }
        },
        init = function()

        end

    },
    {
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
            }
        },
        filetypes = {
            "go",
        },
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function(_, opts)
            require("dap-go").setup(opts)
        end,
    },
}
