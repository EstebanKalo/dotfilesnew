-- Example config in Lua
--vim.g.gruvbox_baby_function_style = "NONE"
--vim.g.gruvbox_baby_keyword_style = "italic"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:
--vim.g.gruvbox_baby_highlights = {Normal = {fg = "#FFFFFF", bg = "NONE", style="underline"}}

-- Enable telescope theme
--vim.g.gruvbox_baby_telescope_theme = 1

-- Enable transparent mode
--vim.g.gruvbox_baby_transparent_mode = 1

-- Load the colorscheme

local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {Normal = { fg = "#FFFFFF", 
                                            bg = "#1D2021", 
                                            style="italic"
                                            }}

vim.gruvbox_baby_function_style = "undercurl"

--vim.g.gruvbox_baby_highlights = {Normal = {fg = colors.orange}}

--colors.Special = {fg = colors.cyan, style = "bold"}


vim.cmd[[colorscheme gruvbox-baby]]

--# "#9D0006"
--# "#B8BB26"
-- "#1D2021" 
--# "#D65D0E"
-- "#8F3F71"
--# "#B57614"
--# "#076678"
--# "#8EC07C" 
