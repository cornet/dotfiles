local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

vim.g.mapleader = ','

map('n', '<C-p>', '<cmd>Telescope git_files<cr>', default_opts)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', default_opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', default_opts)
map('n', '<leader>fc', '<cmd>Telescope git_commits<cr>', default_opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', default_opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', default_opts)
map('n', '<leader>fp', '<cmd>Telescope projects<cr>', default_opts)

map('n', '<leader>a', ':Ack!<Space>', {noremap = true})

map('n', '<leader>ne', '<cmd>NvimTreeToggle<cr>', default_opts)
map('n', '<leader>r', '<cmd>NvimTreeRefresh<cr>', default_opts)
map('n', '<leader>n', '<cmd>NvimTreeFindFile<cr>', default_opts)

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
