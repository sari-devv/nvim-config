return {
    'tpope/vim-fugitive',
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                current_line_blame = false,
                current_line_blame_opts = {
                    delay = 200,
                },
                current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>',
            }
        end
    }
}
