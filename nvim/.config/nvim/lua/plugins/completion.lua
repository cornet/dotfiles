return {
  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
      },
      completion = {
        trigger = {
          show_in_snippet = false,
        },

        list = {
          selection = {
            preselect = false,
          },
        },
      },
    },
  },
}
