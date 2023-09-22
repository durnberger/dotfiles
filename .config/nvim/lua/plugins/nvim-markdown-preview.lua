return {
   "davidgranstrom/nvim-markdown-preview",

    config = function()
        
        -- preferences
        vim.g['nvim_markdown_preview_theme'] = github
        vim.g['nvim_markdown_preview_format'] = markdown

        -- keymap
        local keymap = vim.keymap
        keymap.set({"n", "i"}, "<leader>m", ":MarkdownPreview<cr>", {})

    end,
}
