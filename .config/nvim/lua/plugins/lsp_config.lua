local M = {}

M.on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "gd",
    "<cmd>lua vim.lsp.buf.definition()<CR>",
    { noremap = true, silent = true }
  )
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Configuración LSP nativa (Neovim 0.11+)
vim.lsp.config.gopls = {
  on_attach = M.on_attach,
  capabilities = M.capabilities,

  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },

  root_dir = vim.fs.root(0, { "go.work", "go.mod", ".git" }),

  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

return M

