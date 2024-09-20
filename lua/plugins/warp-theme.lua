--local colorscheme = {}
--
--return colorscheme
return {
    dir = '~/.config/nvim/lua/warp-theme',
    config = function()
        require('warp-theme').setup()
    end
}
