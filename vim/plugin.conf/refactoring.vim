lua << EOF
local refactor = require('refactoring')

-- Setup refactoring.nvim with default settings
refactor.setup({
  -- prompt for return type in functions
  prompt_func_return_type = {
    go = true,
    java = true,
    cpp = true,
    c = true,
    h = true,
    hpp = true,
    cxx = true,
    hxx = true,
  },
  -- prompt for function parameters
  prompt_func_param_type = {
    go = true,
    java = true,
    cpp = true,
    c = true,
    h = true,
    hpp = true,
    cxx = true,
    hxx = true,
  },
  -- auto decl for types
  printf_statements = {},
  print_var_statements = {},
  -- configure keymaps for different refactoring operations
  keymaps = {
    -- Extract block of code to a function
    extract_function = '<leader>re',
    -- Extract block of code to a variable
    extract_variable = '<leader>rv',
    -- Extract to a block
    extract_block = '<leader>rb',
    -- Inline a variable
    inline_variable = '<leader>ri',
    -- Print variable for debugging
    print_var = '<leader>rp',
  },
})

-- Set up keybindings for visual mode
vim.api.nvim_set_keymap("v", "<leader>re", "<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>rf", "<Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>rv", "<Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>ri", "<Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>rb", "<Esc><Cmd>lua require('refactoring').refactor('Extract Block')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>rbf", "<Esc><Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>", { noremap = true, silent = true })

-- Set up keybindings for normal mode
vim.api.nvim_set_keymap("n", "<leader>rp", "<Cmd>lua require('refactoring').debug.print_var({})<CR>", { noremap = true, silent = true })
EOF

