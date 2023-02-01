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
          \   'source_filename': '/home/nathan/tmp/foo.md'}
          \]
]])
