lua << EOF
require('conform').setup({
    formatters_by_ft = {
        python = { "black" },  -- Use Black for Python
        go = { "gofmt" },      -- Use Gofmt for Go
    },
})

-- Autoformat on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.py", "*.go"},
    callback = function()
        require('conform').format({ async = true })
    end,
})
EOF
