-- Cleaned
require("met.options") -- Vim options
require("met.plugins") -- Install plugins
require("met.keymaps") -- Map keys/combos to different keys/combos
require("met.colorscheme") -- Set colorscheme 
require("met.neogit") -- Git integration
require("nvim-tree").setup {} -- File explorer tree
require("met.toggleterm") -- Open a floating terminal
require("met.treesitter") -- Better syntax highlighting and language parsing
require("met.indent_blankline") -- Vertical scope identifiers
require("met.treesj") -- Split and join blocks
--require("met.comment") -- Quickly add comments and multiline comments
require("met.telescope") -- Quickly find files
require("met.lualine") -- Bar at the bottom that shows git, vim, and file info
require("met.harpoon") -- Cycle through most commonly used files
require("met.bufferline") -- Bar at the top to show which buffers are open 
require("met.flash") -- Quickly search within files
require("met.gitsigns") -- Left bar showing git info
require("met.cmp") -- Autocompletion
require("met.chatgpt") -- Chat GPT plugin
-- Not cleaned
require("met.lsp") -- Language Server Protocol
require("met.autopairs")
require("met.project")
require("met.impatient")
require("met.alpha")
require("met.luasnip")
require("met.autocommands")
require("met.undotree")
require("met.debugger")
require("met.fugitive")
--require("met.ufo") -- Code folding
vim.cmd([[
let g:python_pep8_indent_multiline_string = -1
let g:python_pep8_indent_hang_closing = 0
filetype indent on
let g:AutoPairsFlyMode = 1
]])


