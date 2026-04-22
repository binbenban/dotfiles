return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "FileType python" },
  cmd = { "ConformInfo" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "ruff_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
    
    vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })
  end,
}