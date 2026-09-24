-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    -- Go to definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    
    -- Optional but highly recommended additions:
    -- Go to declaration
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    -- Show hover documentation
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  end,
})
