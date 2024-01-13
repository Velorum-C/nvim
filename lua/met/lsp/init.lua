-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.automatic_installation = true
lsp.setup()

require("met.lsp.handlers").setup()
require("met.lsp.null-ls")
