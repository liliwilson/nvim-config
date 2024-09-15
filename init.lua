vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")

-- make space my leader key
vim.g.mapleader = " "


-- Rebind "*p to <leader>pv (paste from system clipboard)
vim.api.nvim_set_keymap('n', '<leader>pv', '"*p', { noremap = true, silent = true })
-- Rebind "*y to <leader>cv (copy to system clipboard)
vim.api.nvim_set_keymap('n', '<leader>cv', '"*y', { noremap = true, silent = true })

require("config.lazy")
