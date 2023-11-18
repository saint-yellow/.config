return {
    -- installed colorschemes
    {
        "ellisonleao/gruvbox.nvim",
        lazy = true,
    },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
            light_style = "day", -- The theme is used when the background is set to light
            transparent = false, -- Enable this to disable setting the background color
            terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
            styles = {
                -- Style to be applied to different syntax groups
                -- Value is any valid attr-list value for `:help nvim_set_hl`
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                -- Background styles. Can be "dark", "transparent" or "normal"
                sidebars = "dark", -- style for sidebars, see below
                floats = "dark", -- style for floating windows
            },
            sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
            day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
            hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
            dim_inactive = true, -- dims inactive windows
            lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

            --- You can override specific color groups to use other groups or a hex color
            --- function will be called with a ColorScheme table
            ---@param colors ColorScheme
            on_colors = function(colors) end,

            --- You can override specific highlights to use other groups or a hex color
            --- function will be called with a Highlights and ColorScheme table
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors) end,
        },
    },
    {
        "catppuccin/nvim",
        laay = true,
        name = "catppuccin",
        opts = {
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
            color_overrides = {},
            custom_highlights = {},
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },

    -- colorscheme switcher
    {
        "zaldih/themery.nvim",
        opts = {
            themes = {
                {
                    name = "Gruvbox dark",
                    colorscheme = "gruvbox",
                    before = [[vim.opt.background = "dark"]],
                },
                {
                    name = "Gruvbox light",
                    colorscheme = "gruvbox",
                    before = [[vim.opt.background = "light"]],
                    after = nil,
                },
                {
                    name = "Tokyo Night Storm",
                    colorscheme = "tokyonight",
                    before = nil,
                    after = function()
                        require("tokyonight")._load("storm")
                    end,
                },
                {
                    name = "Tokyo Night Moon",
                    colorscheme = "tokyonight",
                    before = nil,
                    after = function()
                        require("tokyonight")._load("moon")
                    end,
                },
                {
                    name = "Tokyo Night",
                    colorscheme = "tokyonight",
                    before = nil,
                    after = function()
                        require("tokyonight")._load("night")
                    end,
                },
                {
                    name = "Tokyo Night Day",
                    colorscheme = "tokyonight",
                    before = nil,
                    after = function()
                        require("tokyonight")._load("day")
                    end,
                },
                {
                    name = "Catppucin",
                    colorscheme = "catppuccin",
                    before = nil,
                    after = nil,
                },
            },
        },
    },
}
