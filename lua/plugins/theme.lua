return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-light",
    },
  },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "frappe",
  --       transparent_background = true,
  --       float = {
  --         transparent = true,
  --         solid = false,
  --       },
  --     })
  --   end,
  -- },
  {
    "folke/noice.nvim",
    opts = {
      views = {
        mini = {
          win_options = {
            winblend = 0,
          },
        },
      },
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
  {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
        terminal = false,
        overrides = {
          LineNr = { fg = "#ABB0B6" },
          CursorLineNr = { fg = "#55B4D4", bold = true },
        },
      })
    end,
  },
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
