return {
    "nvimdev/guard.nvim",
    config = function()
        local ft = require("guard.filetype")

        ft("go"):fmt("golines")
        ft("typescript,javascript,typescriptreact"):fmt("prettier")
        ft("python"):fmt("black"):lint("pylint")
        ft("lua"):fmt("stylua"):lint("luacheck")

        require("guard").setup({
            fmt_on_save = true,
            lsp_as_default_formatter = true,
        })
    end,
}
