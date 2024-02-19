-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'cool',
    transparent = false,
    priority = 1000,
    config = function ()
        vim.cmd.colorscheme 'onedark'
    end
}
require('onedark').load()
