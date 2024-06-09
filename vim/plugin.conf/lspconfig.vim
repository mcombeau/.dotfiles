lua << EOF
local lspconfig = require('lspconfig')

-- Pyright setup
lspconfig.pyright.setup{}

-- Keybindings for LSP
local opts = { buffer = bufnr, noremap = true, silent = true }
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>]d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
EOF
