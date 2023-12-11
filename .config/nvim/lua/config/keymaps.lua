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
map("n", "<leader>r", ":%s///g<Left><Left><Left>", {})

---------------------------------------------------------------------------------------------
-- Toggle spell checking on and off
map({"n", "i"}, "<leader>s", ":set spell!<cr>", {})

---------------------------------------------------------------------------------------------
-- Cut copy and paste 
-- To ensure the default register is the system clipboard, add the following to 'options.lua'
--
--      vim.opt.clipboard:append("unnamedplus")
--
-- Remember to install a suitable clipboard programme, for example 'xclip'
-- More information on the subject can be found via ':h clipboard'

--map("n", "<C-v>", "v", {})          -- switch to visual mode 
--map("i", "<C-v>", "<ESC>v", {})     -- switch to visual mode

--map("i", "<leader>p", "<C-o>P", {}) -- paste in insert mode
--map("n", "<leader>p", "P", {})      -- just in case I forget which mode I'm in!!

-------------------------------------------------------------------------------------------
-- Ctrl-return will create a line break.
-- Now when printing a markdown file, those lines that do not have paragraph breaks 
-- between them will format correctly
map("i", "<C-cr>", " <br /><cr>", {})

-------------------------------------------------------------------------------------------
-- Convert open markdown document to pdf
-- `G` moves the cursor to the end of the document
-- `A` switches back to insert mode 
map("n", "<leader>p", ":%write !~/bin/print/nvim-md-to-pdf.sh<cr><cr> G", {})

-------------------------------------------------------------------------------------------
-- Split Windows 

-- Open a split screen and equalise the size of each window
map("n", "wr", ":vsplit<cr> <C-w>=<cr>", {} )   -- split to right
map("n", "wb", ":split<cr> <C-w>=<cr>", {} )    -- split below

-- Equalize size of open windows 
map("n", "we", "<C-w>=<cr>", {})

-- Move around open windows
map("n", "<C-Right>", "<C-w>l", {})
map("n", "<C-Left>", "<C-w>h", {})
map("n", "<C-Up>", "<C-w>k", {})
map("n", "<C-Down>", "<C-w>j", {})

-------------------------------------------------------------------------------------------
-- Tidy tables
-- https://jcuenod.github.io/bibletech/2023/03/14/formatting-md-tables-in-neovim/
map("n", "<leader>1", "vip :!pandoc -t markdown-simple_tables<cr>", {})

