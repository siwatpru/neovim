return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<C-h>",
        function()
          -- Check if a left split exists
          if vim.fn.winnr() ~= vim.fn.winnr("h") then
            vim.cmd("wincmd h")
          elseif vim.fn.exists("$TMUX") == 1 then
            require("custom.tmux_nav").move("h")
          end
        end,
        desc = "Move left between vim and tmux",
      },
      {
        "<C-j>",
        function()
          -- Check if a down split exists
          if vim.fn.winnr() ~= vim.fn.winnr("j") then
            vim.cmd("wincmd j")
          elseif vim.fn.exists("$TMUX") == 1 then
            require("custom.tmux_nav").move("j")
          end
        end,
        desc = "Move down between vim and tmux",
      },
      {
        "<C-k>",
        function()
          -- Check if an up split exists
          if vim.fn.winnr() ~= vim.fn.winnr("k") then
            vim.cmd("wincmd k")
          elseif vim.fn.exists("$TMUX") == 1 then
            require("custom.tmux_nav").move("k")
          end
        end,
        desc = "Move up between vim and tmux",
      },
      {
        "<C-l>",
        function()
          -- Check if a right split exists
          if vim.fn.winnr() ~= vim.fn.winnr("l") then
            vim.cmd("wincmd l")
          elseif vim.fn.exists("$TMUX") == 1 then
            require("custom.tmux_nav").move("l")
          end
        end,
        desc = "Move right between vim and tmux",
      },
    },
  },
}
