---------------------------------------------------------------------------------------------
-- Basic configuration options
---------------------------------------------------------------------------------------------

local opt = vim.opt

opt.autowrite = true                -- Enable auto write
opt.background = "dark"
opt.backspace = 'indent,start,eol'  -- Allow unrestricted backspacing in insert mode
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register
opt.confirm = true                  -- Confirm to save changes before exiting modified buffer
opt.cursorline = true               -- Enable highlighting of the current line
opt.expandtab = true                -- Use spaces instead of tabs
opt.hidden = true                   -- Hide unused buffers
opt.ignorecase = true               -- Search is case insensitive
opt.inccommand= "split"             -- Show replacements in split window before applying to file
opt.laststatus = 2                  -- Status line visibility - 2 = always on 
opt.linebreak = true                -- Wrap long lines
opt.mouse = "a"                     -- Enable mouse mode
opt.number = true                   -- Display line number
opt.pumblend = 10                   -- Pseudo transparency for pop-up menu
opt.pumheight = 10                  -- Maximum number of entries in a pop-up
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftwidth = 4                  -- Indent is 4 spaces
opt.showmode = true                 -- Mode line visibility
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Search is case sensitive if query contains capitals
opt.spell = false                   -- Use 'Autocmd.lua' to set spelling for specific file types
opt.spelllang = 'en_gb'
opt.swapfile = false                -- Prevent creation of vim .swp files 
opt.tabstop = 4                     -- Tabs are 4 spaces
opt.termguicolors = true            -- True colour support
opt.title = true                    -- Show the file title
opt.undofile = true
opt.undolevels = 10000
opt.wildmode = "longest:full,full"  -- Command-line completion mode
opt.wrap = true                     -- Line wrap

-- Fix markdown indentation settings
--vim.g.markdown_recommended_style = 0



