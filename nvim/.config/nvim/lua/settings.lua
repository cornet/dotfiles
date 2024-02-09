-- Enable mouse in all modes
vim.opt.mouse = 'a'

-- Integrate with system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Live find/replace
vim.opt.inccommand = 'nosplit'

-- Enable true colour support
vim.opt.termguicolors = true

-- Stop leaving .swp files all over the place
-- vim.opt.directory = '~/.vimtmp'
-- vim.opt.backupdir = '~/.vimtmp'

-- Enable popup wildmenu
vim.opt.wildmenu = true

-- Make things like gitgutter more responsive
vim.opt.updatetime = 100

-- Omnicomplete
--  - Always show menu even if single match
--  - Show preview/info window if there is one
--  - Don't select first option
--    (Would prefer longest but it appears to have a bug which will
--     delete already typed word when completing :( )
vim.opt.completeopt = 'menuone,preview,noselect'

-- Hide Omnicomplete Info(Preview) window after completions
vim.cmd([[
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
]])

-- Spellcheck
vim.opt.spell = true
vim.opt.spelllang = 'en_gb'
vim.opt.complete = vim.opt.complete + 'kspell'

-- Tabwidth options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Set colour scheme
-- vim.cmd([[
-- colorscheme base16-onedark
-- let base16colorspace=256
-- ]])
 vim.cmd[[colorscheme catppuccin-frappe]]

-- Filetype options
vim.cmd([[
au FileType ruby  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType perl  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
]])


-- Highlight entire line for errors
-- Highlight the line number for warnings
vim.diagnostic.config({
    virtual_text = false,
    underline = false,
})
