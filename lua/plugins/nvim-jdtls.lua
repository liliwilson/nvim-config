return {
    {
        "mfussenegger/nvim-jdtls",
        config = function()
            local jdtls_path = "/Users/liliwilson/.local/share/nvim/mason/packages/jdtls/bin/jdtls"
            require('jdtls').start_or_attach({
                cmd = { jdtls_path },
            })
        end
    }
}
