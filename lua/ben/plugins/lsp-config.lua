return {
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim',
        },

        config = function()
            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "jdtls",
                    "gopls",
                    "pyright",
                    "rust_analyzer",
                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.gopls.setup({})
            lspconfig.pyright.setup({})
            --lspconfig.jdtls.setup({}) jdtls is handled via nvim-jdtls
        end
    },
    {
        'mfussenegger/nvim-jdtls',
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recommended
        lazy = false, -- This plugin is already lazy
    }
}

