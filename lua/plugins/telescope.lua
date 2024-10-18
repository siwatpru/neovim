return {

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("live_grep_args")
    end,
    keys = {
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      {
        "<leader>fs",
        function()
          require("telescope").extensions.live_grep_args.live_grep_args({
            search_dirs = { vim.fn.getcwd() },
          })
        end,
        desc = "Live Grep args",
      },
    },
  },
}
