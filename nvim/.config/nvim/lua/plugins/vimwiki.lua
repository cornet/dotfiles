-- Set path to wiki
-- auto_tags: update tags file on save
-- auto_toc: rebuild table of contents on save
vim.g.vimwiki_list = {
  {
    path = '~/Documents/vimwiki',
    syntax = 'markdown',
    ext = '.md',
    nested_syntaxes = {ruby = 'ruby', bash = 'sh', terraform = 'terraform', json = 'json'},
    auto_tags = 1,
    auto_toc = 1,
    auto_diary_index = 1
  },
  {
    path = '~/Documents/vimwiki-fa',
    syntax = 'markdown',
    ext = '.md',
    nested_syntaxes = {ruby = 'ruby', bash = 'sh', terraform = 'terraform', json = 'json'},
    auto_tags = 1,
    auto_toc = 1,
    auto_diary_index = 1
  }           
}

-- Don't associate all .md files with vimwiki
vim.g.vimwiki_global_ext = 0
-- Change to current wiki dir
vim.g.vimwiki_auto_chdir = 1
-- Add header title when creating page
vim.g.vimwiki_auto_header = 0
-- Alternate header colours
vim.g.vimwiki_hl_headers = 1
-- Disable keyboard mappings for tables
vim.g.vimwiki_table_mappings=0
