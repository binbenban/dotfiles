return {
  "mrjones2014/legendary.nvim",
  keys = {
    {
      "<C-p>",
      function()
        require("legendary").find()
      end,
      desc = "Command Palette",
    },
  },
  config = function()
    require("legendary").setup({
      default_prompt = "Type a command or search...",
      include_builtin = true,
      include_norangecompletion = false,
      which_key = {
        enable_mappings = true,
      },
    })
  end,
}
