return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        {
            'Smiteshp/nvim-navic',
            config = function()
                require("nvim-navic").setup {
                    lsp = {
                        auto_attach = true
                    }
                }
            end
        }
    },
    config = function()
        require('lualine').setup {
            winbar = {
                lualine_a = {
                    function()
                        return require("nvim-navic").get_location()
                    end
                }
            },
            sections = {
                lualine_c = {
                    {
                        'filename',
                        path = 1
                    }
                }
            }
        }
    end

}
