---------------------------------------------------------------------------------------------
-- keymap
---------------------------------------------------------------------------------------------

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
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

--------------------------------------------------------------------------------------------
-- Better up & down
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/mappings.lua
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

--------------------------------------------------------------------------------------------
-- Search and replace
map({"n", "i"}, "<leader>r", ":%s///g<Left><Left><Left>", {})

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
map("n", "<C-v>", "v", {})      -- switch to visual mode 
map("n", "p", "P", {})          -- capital 'P' puts content before cursor

map("i", "<C-v>", "<ESC>v", {}) -- switch to visual mode   

-------------------------------------------------------------------------------------------
-- Split Screen 

-- Open a split screen and equalise the size of each window
map("n", "sr", ":vsplit<cr> <C-w>=<cr>", {} )   -- split to right
map("n", "sb", ":split<cr> <C-w>=<cr>", {} )    -- split below

-- Move around open windows
map("n", "<C-Right>", "<C-w>l", {})
map("n", "<C-Left>", "<C-w>h", {})
map("n", "<C-Up>", "<C-w>k", {})
map("n", "<C-Down>", "<C-w>j", {})

-------------------------------------------------------------------------------------------

