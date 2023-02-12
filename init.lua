require("met.options")
require("met.keymaps")
require("met.plugins")
require("met.colorscheme")
require("met.cmp")
require("met.lsp")
require("met.telescope")
require("met.gitsigns")
require("met.treesitter")
require("met.autopairs")
require("met.comment")
require("met.nvim-tree")
require("met.bufferline")
require("met.lualine")
require("met.toggleterm")
require("met.project")
require("met.impatient")
require("met.indentline")
require("met.alpha")
require("met.snippets")
-- require "met.whichkey"
require("met.autocommands")
require("met.harpoon")
require("met.fugitive")
require("met.undotree")
vim.cmd([[
let g:python_pep8_indent_multiline_string = -1
let g:python_pep8_indent_hang_closing = 0
filetype indent on
let g:AutoPairsFlyMode = 1
]])
