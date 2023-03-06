-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local present, lsp = pcall(require, 'lsp-zero')

if not present then
  return
end

local cmp = require('cmp')
local luasnip = require("luasnip")

-- Return true if current character position is in the middle of or at the end of a word.
-- https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Use recommended settings
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()


lsp.setup_nvim_cmp({
  -- Don't pre-select first option as often breaks normal use of Enter
  preselect = 'none',
  completion = {
    completeopt = 'menu,menuone,noinsert,noselect'
  },

  -- The default key bindings for Tab prevent it from
  -- jumping between snippet placeholders.
  --
  -- Fix taken from https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
  mapping = lsp.defaults.cmp_mappings({
    -- when menu is visible, navigate to next item
    -- when line is empty, insert a tab character
    -- when in luasnip placeholder skip to next placeholder
    -- when has_words_before complete
    -- else, fallback (insert a Tab char)
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, {'i', 's'}),

    -- when menu is visible, navigate to previous item on list
    -- when in luasnip placeholder skip to previous placeholder
    -- else, revert to default behavior
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'})

  })
})


lsp.configure('terraformls', {
  init_options = {
      experimentalFeatures = {
        prefillRequiredFields = true
      }
  }
})

lsp.setup()
