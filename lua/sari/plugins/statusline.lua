return {
    {
        'echasnovski/mini.statusline',
        version = '*',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('mini.statusline').setup({})
        end
    }
}
