  return {
    {
      'nvim-telescope/telescope.nvim',
      cmd = 'Telescope',
      keys = {
        { '<C-p>', '<cmd>Telescope git_files<cr>', desc = 'Find Files (git dir)' },
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files (cwd)' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
        { '<leader>fc', '<cmd>Telescope git_commits<cr>', desc = 'Git Commits' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
        { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help Tags' },
        { '<leader>fp', '<cmd>Telescope projects<cr>', desc = 'Projects' },
      },
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {}
      require('telescope').load_extension('projects')
    end
  },
}
