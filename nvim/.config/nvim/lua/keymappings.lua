local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

vim.g.mapleader = ','

map('', '<leader>gd', ':Gvdiffsplit<cr>',  default_opts)
map('', '<leader>gs', ':Git<cr>',  default_opts)
map('', '<leader>gl', ':Gclog<cr>',  default_opts)
map('', '<leader>gb', ':GBrowse<cr>',  default_opts)
map('', '<leader>ga', ':Git add %:p<cr><cr>',  default_opts)
map('', '<leader>gc', ':G commit -v -q<cr>',  default_opts)

map('n', '<leader>xx', '<cmd>Trouble<cr>', default_opts)
map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>', default_opts)
map('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>', default_opts)
map('n', '<leader>xl', '<cmd>Trouble loclist<cr>', default_opts)
map('n', '<leader>xq', '<cmd>Trouble quickfix<cr>', default_opts)
map('n', 'gR', '<cmd>Trouble lsp_references<cr>', default_opts)

map('n', '<leader>sb', '<cmd>SymbolsOutline<cr>', default_opts)

vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")

local function map_c_n()
  if require('yanky').can_cycle() then
    require('yanky').cycle(1)
  else
    vim.cmd([[execute "normal! \<c-n>"]])
  end
end

local function map_c_p()
  if require('yanky').can_cycle() then
    require('yanky').cycle(-1)
  else
    vim.cmd([[Telescope git_files]])
  end
end

vim.keymap.set("n", "<c-n>", map_c_n)
vim.keymap.set("n", "<c-p>", map_c_p)


vim.keymap.set("n", "s", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("n", "ss", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.keymap.set("n", "S", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.keymap.set("x", "s", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })
