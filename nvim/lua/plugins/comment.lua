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
    {
        "numToStr/Comment.nvim",
        config = function()
            local opts = {
                ---Add a space b/w comment and the line
                padding = true,
                ---Whether the cursor should stay at its position
                sticky = true,
                ---Lines to be ignored while (un)comment
                ignore = nil,
                ---LHS of toggle mappings in NORMAL mode
                toggler = {
                    ---Line-comment toggle keymap
                    line = "glc",
                    ---Block-comment toggle keymap
                    block = "gbc",
                },
                ---LHS of operator-pending mappings in NORMAL and VISUAL mode
                opleader = {
                    ---Line-comment keymap
                    line = "gl",
                    ---Block-comment keymap
                    block = "gb",
                },
                ---LHS of extra mappings
                extra = {
                    ---Add comment on the line above
                    above = "glO",
                    ---Add comment on the line below
                    below = "glo",
                    ---Add comment at the end of line
                    eol = "glA",
                },
                ---Enable keybindings
                ---NOTE: If given `false` then the plugin won't create any mappings
                mappings = {
                    ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                    basic = true,
                    ---Extra mapping; `gco`, `gcO`, `gcA`
                    extra = true,
                },
                ---Function to call before (un)comment
                pre_hook = nil,
                ---Function to call after (un)comment
                post_hook = nil,
            }
            require("Comment").setup(opts)
        end
    }
}
