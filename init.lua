require("met.plugins") -- Install plugins
require("met.options")
require("met.keymaps") -- Map keys/combos to different keys/combos
require("met.colorscheme") -- Set colorscheme 
require("met.cmp")
require("met.lsp")
--require("met.ufo") -- Code folding
require("met.gitsigns")
require("met.neogit")
require("met.telescope")
require("met.autopairs")
require("met.comment")
require("met.treesitter")
require("nvim-tree").setup {}
require("met.bufferline")
require("met.lualine")
require("met.toggleterm") -- Open a floating terminal
require("met.project")
require("met.impatient")
require("met.indent_blankline")
require("met.alpha")
require("met.luasnip")
require("met.autocommands")
require("met.harpoon")
require("met.undotree")
require("met.debugger")
require("met.fugitive")
vim.cmd([[
let g:python_pep8_indent_multiline_string = -1
let g:python_pep8_indent_hang_closing = 0
filetype indent on
let g:AutoPairsFlyMode = 1
]])
