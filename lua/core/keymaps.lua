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

local isLspDiagnosticsVisible = true

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
	c = {
		-- comment.lua
		"Comment line",
	},
	d = {
		-- lsp.lua
		"Delete",
	},
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
	h = {
		function()
			isLspDiagnosticsVisible = not isLspDiagnosticsVisible
			vim.diagnostic.config({
				virtual_text = isLspDiagnosticsVisible,
				underline = isLspDiagnosticsVisible,
			})
		end,
		"Toggle LSP Diagnostics",
	},
	l = {
		-- Lazy
		"<cmd>Lazy<CR>",
		"Lazy plugin manager",
		opts,
	},
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

-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
	isLspDiagnosticsVisible = not isLspDiagnosticsVisible
	vim.diagnostic.config({
		virtual_text = isLspDiagnosticsVisible,
		underline = isLspDiagnosticsVisible,
	})
end)
