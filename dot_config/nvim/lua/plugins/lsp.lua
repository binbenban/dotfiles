return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "ruff" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      vim.lsp.config('pyright', {
        cmd = { "pyright-langserver", "--stdio" },
        filetypes = { "python" },
        root_markers = { "pyproject.toml", "setup.py", ".git" },
        settings = {
          python = {
            pythonPath = "./.venv/bin/python"
          }
        }
      })
      
      vim.lsp.config('ruff', {
        cmd = { "/home/bwang/.local/share/nvim/mason/packages/ruff/venv/bin/ruff", "server" },
        filetypes = { "python" },
        root_markers = { "pyproject.toml", "ruff.toml", ".git" },
        on_attach = function(client, bufnr)
          client.server_capabilities.hoverProvider = false
        end,
      })
      
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "python",
        callback = function()
          vim.lsp.enable("pyright")
          vim.lsp.enable("ruff")
        end,
      })
      
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show Documentation" })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename Variable" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}