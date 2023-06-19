return {
    {
        "terrortylor/nvim-comment",
        lazy = true,
        config = function()
            require("nvim_comment").setup({})
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
}
