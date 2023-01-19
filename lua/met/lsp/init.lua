local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
local lsp = require('lsp-zero')
lsp.preset('recommended')
require "user.lsp.null-ls"
