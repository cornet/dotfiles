-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local present, lsp = pcall(require, 'lsp-zero')

if not present then
  return
end


lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)


require('lspconfig').terraformls.setup({
  init_options = {
      experimentalFeatures = {
        prefillRequiredFields = true
      }
  }
})

lsp.set_sign_icons({
  error = "",
  warn = "",
  hint = "",
  info = ""
})

lsp.setup()

-- Manage language servers via Mason
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

-- Required to show source of completion in menu
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
  formatting = cmp_format,

  -- Don't pre-select first option as often breaks normal use of Enter
  preselect = 'none',
  completion = {
    completeopt = 'menu,menuone,noinsert,noselect'
  },
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'buffer'},
  },
  mapping = {
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
})
