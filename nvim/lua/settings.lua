local opts = {
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    cursorline = true,
    number = true,
    numberwidth = 2,
    termguicolors = true,
}

local wos = {
    wrap = true,
    linebreak = true,
    list = false
}

for opt, val in pairs(opts) do
    vim.opt[opt] = val
end

for wo, val in pairs(wos) do
    vim.wo[wo] = val
end

-- nord theme 
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false


vim.g.netrw_banner = 0 
vim.g.netrw_liststyle = 3 -- tree instead of plain view
vim.g.netrw_browse_split = 3 -- open file in new tab
