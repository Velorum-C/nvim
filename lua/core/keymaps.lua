local wk = require("which-key")
local opts = { noremap = true, silent = true }

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

wk.register({
	a = {
		-- Ask about errors
		"<cmd>lua vim.lsp.buf.hover()<CR>",
		"Ask about errors",
		opts,
	},
	b = {
		-- Closing windows
		"<cmd>bdelete!<CR>",
		"Close window",
	},
	-- c used in comment.lua
	-- d used in lsp.lua
	e = {
		-- NvimTree
		"<cmd>NvimTreeToggle<CR>",
		"Toggle file explorer",
		opts,
	},
	f = {
		-- Telescope
		name = "Find",
		f = { "<cmd>Telescope find_files<CR>", "File", opts },
		g = { "<cmd>Telescope live_grep<CR>", "Grep", opts },
		h = { "<cmd>Telescope git_files<CR>", "Git", opts },
	},
	g = {
		-- Neogit
		"<cmd>Neogit kind=vsplit<CR>",
		"Git",
		opts,
	},
	-- j and k used in lsp.lua
	l = {
		-- Lazy
		"<cmd>Lazy<CR>",
		"Lazy plugin manager",
		opts,
	},
	-- m used in lsp.lua
	o = {
		-- Format
		"<cmd>lua require('conform').format({lsp_fallback = true, async = false, timeout_ms = 500})<CR>",
		"Prettify",
		opts,
	},
	q = {
		-- Quit
		"<cmd>q<CR>",
		"Quit",
		opts,
	},
	r = {
		":%s/",
		"Find and replace",
		opts,
	},
	s = {
		name = "Gitsigns",
		s = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "Stage hunk", opts },
		u = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "Undo stage hunk", opts },
		r = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "Reset hunk", opts },
		p = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "Preview hunk", opts },
		b = { "<cmd>lua require('gitsigns').blame_line()<CR>", "Blame line", opts },
		d = { "<cmd>lua require('gitsigns').diffthis('~1')<CR>", "Diff this", opts },
		n = { "<cmd>lua require('gitsigns').next_hunk()<CR>", "Next hunk", opts },
	},
	t = {
		"<cmd>lua require('flash').jump()<CR>",
		"Jump",
		opts,
	},
	w = {
		-- Write
		"<cmd>w<CR>",
		"Write",
		opts,
	},
	x = {
		"<cmd>!chmod +x %<CR>",
		"Make executable",
		silent = true,
	},
}, { prefix = "<leader>" })

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
