return {
    "luukvbaal/nnn.nvim",
    lazy = true,
    keys = {
        { "<leader>np", "<cmd>NnnPicker<cr>", desc = "NNN Picker" },
    },
    config = function()
        require("nnn").setup()
    end,
}
