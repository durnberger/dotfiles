return {
    "preservim/vim-pencil",

	config = function()
        
        -- I want to see the markdown syntax 
        -- 0=disable, 1=one char, 2=hide char, 3=hide all (def)
        vim.g['pencil#conceallevel'] = 0        

        -- pencil mode indicator
        -- works in conjunction with `lua/config/statusline.lua`
        vim.g['pencil#mode_indicators'] = {
            hard = "HB",
            auto = "AB",
            soft = "SB",
            off = "OFF",
        }
    end,
    
}
