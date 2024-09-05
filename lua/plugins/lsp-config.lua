return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "rust_analyzer", "pyright", "ltex"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            -- SETTING UP ALL OF THE INSTALLED LANGUAGES
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.rust_analyzer.setup({
                settings = {
                    ['rust-analyzer'] = {
                        diagnostics = {
                            enable = false
                        }
                    }
                }
            })
            lspconfig.ltex.setup({
                settings = {
                    ltex = {
                        language = "en-GB"
                    }
                }
            })

            -- SETTING UP KEYBINDINGS
            -- shift + K now shows more info of the thing you are hovering
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
