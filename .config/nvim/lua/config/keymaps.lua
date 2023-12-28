-- keymap
-- ======

local function map(mode, lhs, rhs, opts)
   
   -- Set default values if not specified
   if opts.noremap == nil then
      opts.noremap = true
   end
    if opts.silent == nil then
      opts.silent = false
   end

   vim.keymap.set(mode, lhs, rhs, opts)

end

---------------------------------------------------------------------------------------------
-- Set the leader key
-- For the space bar, use " " with a space between the quote marks.
-- For the backslash, use "\\"
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

--------------------------------------------------------------------------------------------
-- Better up & down
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/mappings.lua
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

--------------------------------------------------------------------------------------------
-- Search and replace
map("n", "<leader>r", ":%s///g<Left><Left><Left>", {desc = "Search & replace"})

---------------------------------------------------------------------------------------------
-- Toggle spell checking on and off
map("n", "<leader>s", ":set spell!<cr>", {desc = "Toggle spelling"})

-------------------------------------------------------------------------------------------
-- Ctrl-return will create a line break.
-- Now when printing a markdown file, those lines that do not have paragraph breaks 
-- between them will format correctly
map("i", "<C-cr>", " <br /><cr>", {})

-------------------------------------------------------------------------------------------
-- Convert markdown document in current buffer to pdf
map("n", "<leader>p", " ", {desc = "Print options"})

-- `G` moves the cursor to the end of the document
-- `A` switches back to insert mode 
map("n", "<leader>pp", ":%write !~/bin/print/nvim-md-to-pdf.sh<cr><cr> G", {desc = "Print to pdf"})

-------------------------------------------------------------------------------------------
-- Split Windows
map("n", "<leader>w", " ", {desc = "Split window"})

-- Open a split screen and equalise the size of each window
map("n", "<leader>wr", ":vsplit<cr> <C-w>=<cr>", {desc = "Split right"} )   -- split to right
map("n", "<leader>wb", ":split<cr> <C-w>=<cr>", {desc = "Split below"} )    -- split below

-- Equalize size of open windows 
map("n", "<leader>we", "<C-w>=<cr>", {desc = "Split equalised"})

-- Move around open windows
map("n", "<C-Right>", "<C-w>l", {})
map("n", "<C-Left>", "<C-w>h", {})
map("n", "<C-Up>", "<C-w>k", {})
map("n", "<C-Down>", "<C-w>j", {})

-------------------------------------------------------------------------------------------
-- Markdown Options 
map("n", "<leader>m", " ", {desc = "Markdown formatting"})

-- Tidy Tables
-- https://jcuenod.github.io/bibletech/2023/03/14/formatting-md-tables-in-neovim/
map("n", "<leader>mt", "vip :!pandoc -t markdown-simple_tables<cr>", { desc = "Tidy table" } )
