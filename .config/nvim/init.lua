require('shortcuts')
require('settings')
require('plugins/packer')
require('plugins/nvim-autopairs')
require('plugins/treesitter')
require('plugins/completions')
require('plugins/my_gruvbox')
require('plugins/lualine')
require('plugins/nvim-tree')
require('plugins/telescope')
require('plugins/lsp_config')
require('plugins/colorizer')
require('plugins/vimtex')
--require('plugins/nvim-cmp')

require("mason").setup(DEFAULT_SETTINGS)
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
  automatic_installation = false,
  on_attach = require("plugins.lsp_config").on_attach,
}
