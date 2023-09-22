require('nvim-treesitter.configs').setup {
   ensure_installed = { 'c', 'cpp', 'meson', 'cmake', 'rust', 'toml', 'haskell', 'python', 'yaml', 'lua', 'vim', 'vimdoc', 'query' },
   auto_install = true,
   highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = {"latex"},
   },
   indent = {
      enable = true
   },
   incremental_selection = {
      enable = true,
      keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scoce_incremental = "grc",
      node_decremental = "grm",
    },
  },

} 
