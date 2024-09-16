return {
  "folke/flash.nvim",
  opts = {
    modes = {
      search = {
        enabled = false,
      },
    },
  },
  keys = {
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
