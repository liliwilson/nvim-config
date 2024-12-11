return {
  {
    "qpkorr/vim-bufkill",
    config = function()
            vim.keymap.set('n', '<leader>bd', ':BD<CR>', { noremap = true, silent = true, desc = "Close buffer" })
            vim.keymap.set('n', '<leader>bw', ':BW<CR>', { noremap = true, silent = true, desc = "Wipe buffer" })
            vim.keymap.set('n', '<leader>bf', ':BF<CR>', { noremap = true, silent = true, desc = "Force buffer close" })
    end
  },
}
