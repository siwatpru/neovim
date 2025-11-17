return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kulala_ls = {
          filetypes = { "http" },
          on_init = function(client)
            -- Disable specific capabilities that might cause issues
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },
  -- {
  --   "saghen/blink.cmp",
  --   optional = true,
  --   opts = function(_, opts)
  --     -- Ensure kulala-ls is included in blink.cmp sources
  --     opts.sources = opts.sources or {}
  --     opts.sources.default = opts.sources.default or {}
  --
  --     -- Add lsp if not already present
  --     if not vim.tbl_contains(opts.sources.default, "lsp") then
  --       table.insert(opts.sources.default, "lsp")
  --     end
  --
  --     return opts
  --   end,
  -- },
}
