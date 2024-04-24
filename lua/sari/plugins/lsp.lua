return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup()

        local lspconfig = require('lspconfig')

        lspconfig.pyright.setup {}
        lspconfig.clangd.setup {}

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {
                            "vim"
                        }
                    }
                }
            }
        }
    end
}
