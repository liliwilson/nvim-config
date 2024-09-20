return {
    dir = '~/.config/nvim/lua/warp-theme',
    config = function()
        -- can either be a link to raw user content or path to yaml on home machine
        local theme_link = "/Users/liliwilson/.warp/themes/hack_mit_2024.yaml"
        --local theme_link =
        --"https://raw.githubusercontent.com/warpdotdev/themes/refs/heads/main/warp_bundled/gruvbox_dark.yaml"
        require('warp-theme').setup(
            { theme_link = theme_link }
        )
    end
}
