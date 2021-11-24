local present, lint = pcall(require, "lint")

if not present then
  return
end

lint.linters.tflint = {
  cmd = 'tflint',
  stdin = false,
  args = {'--format', 'compact', '--no-color'},
  stream = 'stdout',
  ignore_exitcode = false,
  env = nil,
  parser = require('lint.parser').from_errorformat('%f:%l:%c: %m', {
    source = 'tflint',
    severity = vim.lsp.protocol.DiagnosticSeverity.Information
  })
}

lint.linters_by_ft = {
  terraform = {'tflint'}
}

vim.cmd([[
au BufWritePost <buffer> lua require('lint').try_lint()
]])
