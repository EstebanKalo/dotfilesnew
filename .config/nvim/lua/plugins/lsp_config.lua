local M = {}

M.on_attach = function(client, bufnr)
  -- Aquí puedes agregar las configuraciones adicionales que necesites para el cliente LSP específico.
  -- Por ejemplo, puedes establecer mapeos de teclas personalizados u otras opciones de configuración.

  -- Ejemplo de mapeo de teclas para la navegación a la definición con "gd"
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()
-- Puedes agregar más opciones de capacidad si lo deseas.
-- Por ejemplo, para habilitar el soporte de snippet
M.capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.gopls.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
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
