local present, lint = pcall(require, "lint")

if not present then
  return
end

-- Most linters are installed and configured by Mason.nvim
-- however some don't work for various reasons.
lint.linters_by_ft = {
  sh = {'shellcheck'} -- Mason one doesn't work on M1 Macs
}

vim.cmd([[
au BufWritePost * lua require('lint').try_lint()
]])
