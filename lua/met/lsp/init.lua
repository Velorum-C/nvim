local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
}

local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed(servers)
lsp.automatic_installation = true

lsp.setup()
require("met.lsp.handlers").setup()
