return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Free up ,gs for fugative key binding
    { "<leader>gs", false },
    { "<leader>gS", "<cmd>Telescope git_status<CR>", desc = "status" },
  },
}
