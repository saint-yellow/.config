local Util = require("lazyvim.util")

return {
    {
        "nvim-telescope/telescope.nvim",
        optional = true,
        opts = function()
            Util.on_load("telescope.nvim", function()
                require("telescope").load_extension("symbols-outline")
            end)
        end,
        keys = {
            {
                "<leader>ss",
                "<cmd>Telescope aerial<cr>",
                desc = "Goto Symbol (Aerial)",
            },
        },
    },
}
