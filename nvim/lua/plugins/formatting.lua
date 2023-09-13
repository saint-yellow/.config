return {
    "nvimdev/guard.nvim",
    config = function()
        local ft = require("guard.filetype")

        ft("go"):fmt("golines")
        ft("lua"):fmt("stylua")
        ft("json"):fmt("prettierd")

        -- Call setup() LAST!
        require("guard").setup({
            -- the only options for the setup function
            fmt_on_save = true,
            -- Use lsp if no formatter was defined for this filetype
            lsp_as_default_formatter = true,
        })
    end,
}
