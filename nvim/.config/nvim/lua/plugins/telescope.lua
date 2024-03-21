return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- Free up ,gs for fugative key binding
      { "<leader>gs", false },
      { "<leader>gS", "<cmd>Telescope git_status<CR>", desc = "status" },
    },
  },
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    keys = {
      {
        "<leader>hta",
        "<cmd>Telescope terraform_doc full_name=hashicorp/aws<cr>",
        desc = "aws provider documentation",
      },
    },
  },
}
