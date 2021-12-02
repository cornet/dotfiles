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
  -- main.tf:3:19: Error - "t1.2xlarge" is an invalid value as instance_type (aws_instance_invalid_type)
  parser = require('lint.parser').from_errorformat('%f:%l:%c: %t%*[a-z] - %m', {
    source = 'tflint',
  })
}

lint.linters_by_ft = {
  terraform = {'tflint'},
  sh = {'shellcheck'}
}

vim.cmd([[
au BufWritePost <buffer> lua require('lint').try_lint()
]])
