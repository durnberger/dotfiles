return {
	"navarasu/onedark.nvim",
	priority = 1000, -- ensures the colorscheme loads before any other plugins
	config = function()
		-- select the colorscheme here
		vim.cmd([[colorscheme onedark]])
	end,
}
