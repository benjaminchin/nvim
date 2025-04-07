return {
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
                "gopls",
                "pyright",
                "rust_analyzer",
                "texlab",
                "ts_ls",
            }
        })
    end
}
