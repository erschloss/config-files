require('barbar').setup {
    sidebar_filetypes = {
        NvimTree = true,   
    }
}
local map = vim.keymap.set;
local opts = { silent = true }

map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

map('n', '<leader>l', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>r', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)




