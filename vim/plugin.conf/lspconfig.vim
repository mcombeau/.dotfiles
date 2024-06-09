lua << EOF
local lspconfig = require('lspconfig')

-- Pyright setup
lspconfig.pyright.setup{}

-- EFM-langserver setup for linting (flake8) and formatting (black)
local efm_cfg = {
  lintCommand = 'flake8 --config ~/.config/flake8 --stdin-display-name ${INPUT} -',  -- flake8 command for linting
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
  formatCommand = 'black --fast -',  -- black command for formatting
  formatStdin = true,
}

lspconfig.efm.setup{
  init_options = { documentFormatting = true, codeAction = true },
  settings = {
    rootMarkers = {".git/"},
    languages = {
      python = { efm_cfg }
    }
  },
  filetypes = { 'python' },
  debounce = 1000,  -- debounce to reduce frequency of linting
}

-- Keybindings for LSP
local opts = { noremap = true, silent = true }
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

-- New keybinding to format the current file with black using EFM
vim.keymap.set('n', '<leader>bf', function()
  vim.lsp.buf.format({ timeout_ms = 2000 })  -- Format with black
end, opts)

-- Autocmd to automatically format Python files with black on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 2000 })  -- Format with black before saving
  end,
})
EOF

