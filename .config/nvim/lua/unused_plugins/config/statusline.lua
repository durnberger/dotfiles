-- Status Line
-- ===========

-- Source: https://shapeshed.com/vim-statuslines/
local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return branch
    else
        return ":"
    end
end

-- As per Shapeshed's instructions, the "colors are named highlights and will vary with
-- your colorscheme, you can preview all highlight groups with
-- `:so $VIMRUNTIME/syntax/hitest.vim`". 

local function statusline()
    local set_color_1 = "%#Cursor#"
    local set_color_2 = "%#debugBreakpoint#"
    local set_color_3 = "%#WildMenu#"
    local file_name = " %f"
    local modified = "%m"
    local align_right = "%="
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local filetype = " %y"
    local pencil_mode = " %{PencilMode()} "
    local percentage = " %p%%"
    local linecol = " %l:%c"
    local word_count = " [%{wordcount().words} words]"
    local branch = git_branch()

    return string.format(
        "%s%s%s%s%s%s%s%s%s%s%s%%ss%s %s %s ",
        set_color_1,
        file_name,
        modified,
        align_right,
        filetype,
        set_color_2,
        pencil_mode,
        set_color_1,
        fileencoding,
        percentage,
        linecol,
        word_count,
        set_color_3,
        branch
    )
end

vim.opt.statusline = statusline()
