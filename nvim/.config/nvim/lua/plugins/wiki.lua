return {
  'itchyny/calendar.vim',
  {
    'lervag/wiki.vim',
    init = function()
      vim.g.wiki_root = '~/Documents/notes'
      vim.g.wiki_filetypes = { 'md' }
      vim.g.wiki_journal = {
        name = 'Journal',
        frequency = 'daily',
        date_format = {
          daily = '%Y-%m-%d',
          weekly = '%Y_w%V',
          monthly = '%Y_m%m'
        }
      }


      vim.cmd([[
      function! IsJournalEntry(context)
        if a:context.path_wiki =~ "Journal\/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]"
          return v:true
        endif
          return v:false
      endfunction

      let g:wiki_templates = [
      \ { 'match_func': function('IsJournalEntry'),
      \   'source_filename': '~/Documents/notes/templates/journal.md'}
      \]

      augroup init_calendar
        autocmd!
        autocmd FileType calendar
        \ nnoremap <silent><buffer> <cr>
        \ :<c-u>call wiki#journal#open()<cr>
        augroup END
      ]])

    end
  },
--  "epwalsh/obsidian.nvim",
--  lazy = true,
--  event = {
--    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
--    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
--    "BufReadPre /Users/nathanhoward/Documents/notes/**.md",
--    "BufNewFile /Users/nathanhoward/Documents/notes/**.md",
--  },
--  dependencies = {
--    -- Required.
--    "nvim-lua/plenary.nvim",
--
--    -- see below for full list of optional dependencies 👇
--  },
--  opts = {
--    dir = "~/Documents/notes",  -- no need to call 'vim.fn.expand' here
--
--    -- see below for full list of options 👇
--  },
}
