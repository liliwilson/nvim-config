return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            -- fzf settings!
            local builtin = require('telescope.builtin')
            -- set ctrl+P to find files
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            -- set leader + fg to do live grep, right now this is space+fg
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            -- oldfiles
            vim.keymap.set('n', "<Leader>fr", ":Telescope oldfiles<CR>", { noremap = true, silent = true })
        end
    },

    -- this package allows us to use telescope's ui for select
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
