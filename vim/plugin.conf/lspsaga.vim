lua << EOF
local saga = require('lspsaga')

saga.setup({
  use_saga_diagnostic_sign = true,
  code_action_icon = "💡",
  code_action_keys = {
    quit = 'q',
    exec = '<CR>'
  },
  rename_action_keys = {
    quit = '<Esc>',
    exec = '<CR>'
  },
  border_style = "rounded",
  saga_winblend = 10,
  diagnostic_header_icon = " ",
  show_diagnostic_source = true,
  diagnostic_source_bracket = {},
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = false,   -- Disable inline virtual text
  },
  finder_action_keys = {
    open = 'o',
    vsplit = 's',
    split = 'i',
    quit = {'q', '<ESC>'},
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  definition_preview_icon = " ",
  diagnostic_message_position = 'top',
  diagnostic_prefix_format = "%d. ",
  diagnostic_virtual_text_prefix = " ",
  diagnostic_update_in_insert = false,
})

-- Keybindings for lspsaga actions
vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gd', '<cmd>Lspsaga preview_definition<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gh', '<cmd>Lspsaga hover_doc<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gl', '<cmd>Lspsaga show_buf_diagnostics<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>d', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>dp', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true, noremap = true })

-- Keybinding to toggle the terminal with <leader>t
vim.keymap.set('n', '<leader>t', '<cmd>Lspsaga term_toggle<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>sd', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true, noremap = true })

-- Additional configurations for diagnostics
vim.diagnostic.config({
  virtual_text = false,  -- Disable virtual text (inline messages)
  signs = true,          -- Enable diagnostic signs in the gutter
  update_in_insert = false,  -- Do not update diagnostics in insert mode
  severity_sort = true,  -- Sort diagnostics by severity
  float = {
    show_header = true,  -- Show header in diagnostic float
    source = 'always',   -- Show diagnostic source in float
    border = 'rounded',  -- Rounded border for float window
    focusable = false,   -- Float window should not be focusable
  }
})

EOF

