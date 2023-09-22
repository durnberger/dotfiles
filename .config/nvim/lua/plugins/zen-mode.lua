return {
    "folke/zen-mode.nvim",

    config = function()
    
        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>z", ":ZenMode<cr>", {}) 
        keymap.set("i", "<leader>z", "<C-o>:ZenMode<cr>", {}) 
    
        end,

}
