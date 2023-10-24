-- Cleaned
require("met.plugins") -- Install plugins
require("met.keymaps") -- Map keys/combos to different keys/combos
require("met.colorscheme") -- Set colorscheme 
require("met.neogit") -- Git integration
require("nvim-tree").setup {} -- File explorer tree
require("met.toggleterm") -- Open a floating terminal
require("met.treesitter") -- Better syntax highlighting and language parsing
require("met.indent_blankline") -- Vertical scope identifiers
require("met.treesj") -- Split and join blocks
require("met.comment") -- Quickly add comments and multiline comments
require("met.telescope") -- Quickly find files
require("met.lualine") -- Bar at the bottom that shows git, vim, and file info
require("met.harpoon") -- Cycle through most commonly used files
require("met.bufferline") -- Bar at the top to show which buffers are open 
-- Not cleaned
require("met.options")
require("met.cmp")
require("met.lsp")
--require("met.ufo") -- Code folding
require("met.gitsigns")
require("met.autopairs")
require("met.project")
require("met.impatient")
require("met.alpha")
require("met.luasnip")
require("met.autocommands")
require("met.undotree")
require("met.debugger")
require("met.fugitive")
vim.cmd([[
let g:python_pep8_indent_multiline_string = -1
let g:python_pep8_indent_hang_closing = 0
filetype indent on
let g:AutoPairsFlyMode = 1
]])
