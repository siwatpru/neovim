return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
    },
  },
  -- {
  --   "Mofiqul/adwaita.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   -- configure and set on startup
  --   config = function()
  --     vim.g.adwaita_darker = true -- for darker version
  --     vim.g.adwaita_disable_cursorline = true -- to disable cursorline
  --     vim.g.adwaita_transparent = true -- makes the background transparent
  --     vim.cmd("colorscheme adwaita")
  --   end,
  -- },
  -- {
  --   "Shatur/neovim-ayu",
  --   config = function()
  --     require("ayu").setup({
  --       mirage = false,
  --       terminal = false,
  --     })
  --   end,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "ayu",
  --   },
  -- },
  -- {
  --   "folke/noice.nvim",
  --   config = function()
  --     require("noice").setup({
  --       views = {
  --         mini = {
  --           win_options = {
  --             winblend = 0, -- Set full transparency
  --           },
  --         },
  --       },
  --     })
  --   end,
  -- },
}