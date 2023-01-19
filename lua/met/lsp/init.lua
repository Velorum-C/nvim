local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "met.lsp.mason"
require("met.lsp.handlers").setup()
local lsp = require('lsp-zero')
lsp.preset('recommended')
require "met.lsp.null-ls"
