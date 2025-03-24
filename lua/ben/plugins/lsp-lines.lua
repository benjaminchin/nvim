return {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },

    config = function()
        require('lsp_lines').setup({})
        vim.keymap.set('n', '<leader>l', require('lsp_lines').toggle, {})
    end,
}
