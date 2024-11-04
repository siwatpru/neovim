return {
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({
        mirage = false,
        terminal = false,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        views = {
          mini = {
            win_options = {
              winblend = 0, -- Set full transparency
            },
          },
        },
      })
    end,
  },
}
