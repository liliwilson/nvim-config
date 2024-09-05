return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        -- configure syntax highlighting
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "rust", "java", "javascript", "python", "c"},
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
