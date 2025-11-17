return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "ruff",
        "prettier",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["python"] = { "ruff" },
        ["typescript"] = { "prettier" },
        ["typescriptreact"] = { "prettier" },
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- Ensure these servers are installed
      ensure_installed = {
        "pyright",
        "vtsls",
      },
    },
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
}
