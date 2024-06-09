lua << EOF
require('lint').linters_by_ft = {
    python = {'ruff'},
    go = {'golangci-lint'},
}

vim.cmd([[
augroup LintOnSave
  autocmd!
  autocmd BufWritePost *.py,*.go lua require('lint').try_lint()
augroup END
]])
EOF
