return {
  -- Other plugin configurations
  {
    "LazyVim/LazyVim", -- assuming LazyVim itself is included here
    keys = {
      -- Use tmux commands for pane navigation if in a tmux session
      {
        "<C-h>",
        function()
          require("custom.tmux_nav").move("h")
        end,
        desc = "Move left between tmux and vim",
      },
      {
        "<C-j>",
        function()
          require("custom.tmux_nav").move("j")
        end,
        desc = "Move down between tmux and vim",
      },
      {
        "<C-k>",
        function()
          require("custom.tmux_nav").move("k")
        end,
        desc = "Move up between tmux and vim",
      },
      {
        "<C-l>",
        function()
          require("custom.tmux_nav").move("l")
        end,
        desc = "Move right between tmux and vim",
      },
    },
  },
}
