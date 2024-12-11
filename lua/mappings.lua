-- make space my leader key
vim.g.mapleader = " "

-- Rebind "*p to <leader>pv (paste from system clipboard)
vim.api.nvim_set_keymap('n', '<leader>pv', '"*p', { noremap = true, silent = true })
-- Rebind "*y to <leader>cv (copy to system clipboard)
vim.api.nvim_set_keymap('n', '<leader>cv', '"*y', { noremap = true, silent = true })
-- Invoke alpha with <leader>a
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>Alpha<cr>', { noremap = true, silent = true })


local map = vim.keymap.set

-- easier to move around splits
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")

--  disable arrow keys in normal mode
map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- disable highlights
map("n", "<leader>n", "<cmd>noh<CR>")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- mappings for buffers
map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bprev<CR>")

-- mappings for split
-- note: bd closes
map("n", "<leader>v", "<cmd>vs<CR>")
map("n", "<leader>h", "<cmd>split<CR>")
