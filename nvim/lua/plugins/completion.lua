return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",

        ["<Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_next()
            end
          end,
          "snippet_forward",
          "fallback",
        },

        ["<S-Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_prev()
            end
          end,
          "snippet_backward",
          "fallback",
        },
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
