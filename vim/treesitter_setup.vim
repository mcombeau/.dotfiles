
lua << EOF
	require('nvim-treesitter.configs').setup {
		ensure_installed = { "c", "cpp", "lua", "vim", "help" },
		highlight = { enable = true },
		indent = { enable = true }
	}
EOF
