local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Ask about errors
keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

-- Closing windows
keymap("n", "<leader>b", "<cmd>bdelete!<CR>", opts)
keymap("n", "<leader>q", "<cmd>q<CR>", opts)
keymap("n", "<leader>w", "<cmd>w<CR>", opts)

-- Git
keymap("n", "<leader>c", "<cmd>Neogit kind=vsplit<CR>", opts)

-- <leader>d used in lsp.lua

-- Open file explorer (netrw)
keymap("n", "<leader>e", "<cmd>NvimTreeToggle <CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope git_files<CR>", opts)

-- <leader>j and <leader>k used in lsp.lua

-- Lazy
keymap("n", "<leader>l", "<cmd>Lazy <CR>", opts)

-- <leader>m used in lsp.lua

-- Format with conform
--keymap("n", "<leader>o", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
keymap(
	"n",
	"<leader>o",
	"<cmd>lua require('conform').format({lsp_fallback = true, async = false, timeout_ms = 500})<CR>",
	opts
)

-- Find and replace
keymap("n", "<leader>r", ":%s/", opts)

-- Flash
keymap("n", "<leader>t", "<cmd> lua require('flash').jump() <CR>", opts)

-- Change to executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Block splitting
keymap("n", ".", "<cmd> TSJToggle <CR>", opts)

-- Press jk fast to enter normal mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)

-- Tab
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Tmux navigation
keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", opts)
keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", opts)
keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert blank space without insert mode
keymap("n", "<Enter>", "o<ESC>", opts)

-- Delete until closed pair
keymap("n", ")", "f(lct)", opts)
keymap("n", "]", "f[lct]", opts)
keymap("n", "}", "f{lct}", opts)
keymap("n", "'", "f'lct'", opts)
keymap("n", '"', 'f"lct"', opts)

-- Toggleterm
-- keymap("n", [[<C-\>]], "<cmd>ToggleTerm<CR>", opts)

--ChatGPT
--keymap("n", "<leader>gg", "<cmd>GpChatToggle popup<CR>", opts)
--keymap("n", "<leader>gr", "<cmd>GpChatRespond<CR>", opts)
--keymap("n", "<leader>gn", "<cmd>GpChatNew popup<CR>", opts)
--keymap("v", "<leader>gg", "<cmd>GpChatToggle popup<CR>", opts)
--keymap("v", "<leader>gr", "<cmd>GpChatRespond<CR>", opts)
--keymap("v", "<leader>gn", "<cmd>GpChatNew popup<CR>", opts)
