-- Leader key
vim.g.mapleader = ' '

-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Center screen on half page scroll
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Fzf mappings
vim.keymap.set('n', '<leader>ff', require('fzf-lua').files)
vim.keymap.set('n', 'gr', require('fzf-lua').lsp_references)
vim.keymap.set('n', 'gi', require('fzf-lua').lsp_implementations)
vim.keymap.set('n', 'gd', require('fzf-lua').lsp_definitions)
vim.keymap.set('n', '<leader>fr', require('fzf-lua').resume)
vim.keymap.set('n', '<leader>fpg', require('fzf-lua').live_grep)
vim.keymap.set('n', '<leader>fg', require('fzf-lua').lgrep_curbuf)
vim.keymap.set('n', '<leader>ca', require('fzf-lua').lsp_code_actions)
vim.keymap.set('n', '<leader>oc', require('fzf-lua').lsp_outgoing_calls)
vim.keymap.set('n', '<leader>ic', require('fzf-lua').lsp_incoming_calls)
vim.keymap.set('n', '<leader>dd', require('fzf-lua').diagnostics_document)
vim.keymap.set('n', '<leader>dw', require('fzf-lua').diagnostics_workspace)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)

