-- Common Plugins
require('options')
require('plugins')
require('colorscheme')
require('treesitter-config')
require('tabby-config')
require('lualine-config')
require('tree-config')
require('keymapping')
require('smoothCursor-config')
require('mason').setup()
require('whichkey-config')
require("mason-lspconfig").setup()

-- LSP config
require("lspconfig").html.setup{}
require("lspconfig").sumneko_lua.setup{}
require("lspconfig").tsserver.setup{}
require("lspconfig").quick_lint_js.setup{}
require("lspconfig").luau_lsp.setup{}
