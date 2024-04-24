return {
    {
        'echasnovski/mini.statusline',
        version = '*',
        dependencies = {
            {
                'lewis6991/gitsigns.nvim',
                config = function()
                    require('gitsigns').setup()
                end
            },
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('mini.statusline').setup({})
        end
    }
}
