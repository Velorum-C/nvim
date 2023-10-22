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

-- Normal --

-- Git
keymap("n", "<leader>c", "<cmd>Neogit kind=vsplit <CR>", opts)

-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Split windows
keymap("n", "<leader>v", "<C-w>v", opts)
keymap("n", "<leader>s", "<C-w>s", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Closing windows
keymap("n", "<leader>b", "<cmd>Bdelete <CR>", opts)
keymap("n", "<leader>q", ":q <CR>", opts)
keymap("n", "<leader>w", ":w <CR>", opts)


-- Insert blank space without insert mode
keymap("n", "<Enter>", "o<ESC>", opts)

-- Delete until closed pair
keymap("n", ")", "f(lct)", opts)
keymap("n", "]", "f[lct]", opts)
keymap("n", "}", "f{lct}", opts)
keymap("n", "'", "f'lct'", opts)
keymap("n", '"', 'f"lct"', opts)

-- Open file explorer (netrw)
keymap("n", "<leader>e", "<cmd>NvimTreeToggle <CR>", opts)

-- Telescope
keymap("n", "<leader>i", "<cmd>Telescope git_files <CR>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep <CR>", opts)
keymap(
	"n",
	"<leader>f",
	"<cmd>lua require 'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false})) <CR>",
	opts
)

-- Format with null-ls
keymap("n", "<leader>o", "<cmd>lua vim.lsp.buf.format() <CR>", opts)

-- System clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Find and replace
keymap("n", "<leader>r", ":%s/", opts)


-- Insert --

-- Press jk fast to enter normal mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)


-- Visual --

-- Tab
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Press jk fast to enter normal mode
keymap("v", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)


-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
