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
                    "texlab",
                    "ts_ls",
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
            lspconfig.texlab.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            --lspconfig.jdtls.setup({}) jdtls is handled via nvim-jdtls
            vim.diagnostic.config({
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = false,
            })
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

