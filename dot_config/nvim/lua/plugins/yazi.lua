return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      -- Choose your preferred keymap here!
      {
        "<leader>-", -- Many use leader + hyphen
        function() require("yazi").yazi() end,
        desc = "Open yazi at the current file",
      },
      {
        "<leader>cw", -- Open in current working directory
        function() require("yazi").yazi(nil, vim.fn.getcwd()) end,
        desc = "Open yazi in project root",
      },
    },
    opts = {
      -- if you want to open yazi instead of netrw for directories
      open_for_directories = true,
      keymaps = {
        show_help = "<f1>",
      },
    },
  },
}

