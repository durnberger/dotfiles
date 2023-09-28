-- auto command functions
-- ======================

-- spell check
--
-- turn on spell check when opening markdown files
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/autocmds.lua
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.markdown", "*.md", "*.txt" },
   callback = function()
        vim.opt_local.spell = true
   end,
})

-- vim-pencil
--
-- activate `softpencil` when opening a markdown file
-- the alternative is `hardpencil`
-- https://github.com/preservim/vim-pencil 
vim.api.nvim_create_autocmd(
    { "BufEnter" },
    { pattern = { "*.markdown", "*.md", "*.txt" }, command = ":SoftPencil" }
)

-- zen mode
--
-- activate zenmode when a markdown document is opened
-- https://github.com/folke/zen-mode.nvim/issues/51 
--vim.cmd('autocmd VimEnter *.md :ZenMode')

-- terminal - insert mode
--
-- ensure terminal is always in insert mode
-- https://vi.stackexchange.com/questions/3670/how-to-enter-insert-mode-when-entering-neovim-terminal-pane
vim.cmd('autocmd BufWinEnter,WinEnter term://* startinsert')
