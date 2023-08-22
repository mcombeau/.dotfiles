lua << EOF
	require('nvim-treesitter.configs').setup {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"html",
			"javascript",
			"json",
			"make",
			"markdown",
			"typescript",
			"lua",
			"vim" },
		highlight = { enable = true },
		indent = { enable = true }
	}
EOF
