return {
  {
    "folke/snacks.nvim",
    opts = {
      animate = { enabled = true, fps = 60, easing = "outQuad", duration = { step = 8, total = 100 } },
      dashboard = { enabled = true },
      terminal = { enabled = true },
      picker = {
        enable = true,
        layout = {
          backdrop = false,
          border = "rounded",
        },
        sources = {
          files = {
            -- hidden = true,
            -- ignored = true,
          },
        },
        grep = {
          -- hidden = true,
        },
        explorer = {
          -- hidden = true,
          -- ignored = true,
        },
      },
      actions = {
        confirm = function(picker, item, action)
          if not item then
            return
          elseif picker.opts.source == "explorer" and item.dir then
            require("snacks.picker.source.explorer").actions.confirm(picker, item, action)
          else
            Snacks.picker.actions.pick_win(picker, item, action)
            Snacks.picker.actions.jump(picker, item, action)
          end
        end,
      },
      keys = {
        {
          "<c-/>",
          function()
            Snacks.terminal()
          end,
          desc = "Toggle Terminal",
          mode = { "n", "t" },
        },
        {
          "<c-_>",
          function()
            Snacks.terminal()
          end,
          desc = "which_key_ignore",
          mode = { "n", "t" },
        },
      },
    },
  },
}
