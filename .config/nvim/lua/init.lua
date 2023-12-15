-- Load configurtaion files from ~/.config/nvim/lua/config/ 
require("config.options")
require("config.keymaps")
--require("config.statusline")
require("config.autocmds")
require("config.lazy")

-- The following is dependant on the plugin `nvim-cmp.lua`
-- Load snippets from ~/.config/nvim/lua/snippets/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets/"})
