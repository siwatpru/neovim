return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  keys = {
    { "<leader>1", false },
    { "<leader>2", false },
    { "<leader>3", false },
    { "<leader>4", false },
    { "<leader>5", false },
    { "<leader>h", false },
    { "<leader>H", false },
    {
      "<leader>a",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon File",
    },
    {
      "<leader>o",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon Quick Menu",
    },
    {
      "<leader>h",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon to File 1",
    },
    {
      "<leader>j",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon to File 2",
    },
    {
      "<leader>k",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon to File 3",
    },
    {
      "<leader>l",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon to File 4",
    },
    {
      "<leader>;",
      function()
        require("harpoon"):list():select(5)
      end,
      desc = "Harpoon to File 5",
    },
  },
}
