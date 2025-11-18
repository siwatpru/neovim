return {
  "folke/snacks.nvim",
  opts = {
    words = {
      enable = true,
    },
    lazygit = {
      win = {
        style = "lazygit",
        width = 0,
        height = 0,
      },
      config = {
        git = {
          paging = {
            colorArg = "always",
            pager = "delta --light --paging=never",
          },
          paging_never = true,
        },
      },
    },
  },
}
