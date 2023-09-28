------------ --------------------------------------------------------------------------------
-- auto command functions
---------------------------------------------------------------------------------------------

-- turn on spell check when opening markdown files
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/autocmds.lua
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.markdown", "*.md", "*.txt" },
   callback = function()
        vim.opt_local.spell = true
   end,
})

-- activate `softpencil` when opening a markdown file
-- the alternative is `hardpencil`
-- https://github.com/preservim/vim-pencil 
vim.api.nvim_create_autocmd(
    { "BufEnter" },
    { pattern = { "*.markdown", "*.md", "*.txt" }, command = ":SoftPencil" }
)

-- activate zenmode when a markdown document is opened
-- https://github.com/folke/zen-mode.nvim/issues/51 
vim.cmd('autocmd VimEnter *.md :ZenMode')
