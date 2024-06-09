lua << EOF
local lspconfig = require('lspconfig')

-- Function to set up key mappings after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings for LSP features
  local opts = { noremap = true, silent = true }
  buf_set_keymap('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '<leader>[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>]d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

  -- Formatting keybinding
  buf_set_keymap('n', '<leader>bf', '<cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>', opts)

  -- Code actions keybinding (used by lspsaga)
  buf_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)

  -- Enable code actions
  if client.server_capabilities.codeActionProvider then
    buf_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
  end
end

-- Pyright setup with on_attach function
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})

-- EFM setup for linting and formatting
local efm_cfg = {
  lintCommand = 'flake8 --config ~/.config/flake8 --stdin-display-name ${INPUT} -',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
  formatCommand = 'black --fast -',
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
  debounce = 1000,
}

-- Autocmd to automatically format Python files with black on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 2000 })
  end,
})

EOF

