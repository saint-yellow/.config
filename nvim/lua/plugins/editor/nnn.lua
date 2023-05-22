return {
    "luukvbaal/nnn.nvim",
    lazy = false,
    keys = {
        { "<leader>n", "<cmd>NnnPicker<cr>", desc = "NNN Picker" },
    },
    config = function()
        require("nnn").setup()
    end,
}
