return {
    'tpope/vim-fugitive',
    {
        'f-person/git-blame.nvim',
        config = function()
            require('gitblame').setup {
                enabled = false,
                blame_delay = 500
            }
        end
    }
}
