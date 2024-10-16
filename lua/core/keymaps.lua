local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set
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

local wk = require("which-key")
wk.add({
	-- General
	{ "<leader>a", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Ask about errors" },
	{ "<leader>b", "<cmd>bdelete!<CR>", desc = "Close window" },
	{ "<leader>c", desc = "Comment line" },
	{ "<leader>d", desc = "Delete" },
	{ "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },

	-- Find
	{ "<leader>f", group = "Find" }, -- Unique groups for find
	{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find File" }, -- Unique keybinding
	{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep" },
	{ "<leader>fh", "<cmd>Telescope git_files<CR>", desc = "Git" },

	-- Git
	{ "<leader>g", "<cmd>Neogit kind=vsplit<CR>", desc = "Git" },

	-- LSP diagnostics
	{ "<leader>h", "<function>", desc = "Toggle LSP Diagnostics" },

	-- Lazy plugin manager
	{ "<leader>l", "<cmd>Lazy<CR>", desc = "Lazy plugin manager" },

	-- Format
	{
		"<leader>o",
		"<cmd>lua require('conform').format({lsp_fallback = true, async = false, timeout_ms = 500})<CR>",
		desc = "Prettify",
	},

	-- Save and Exit
	{
		mode = { "n", "v" },
		{ "<leader>q", "<cmd>q<CR>", desc = "Quit" },
		{ "<leader>w", "<cmd>w<CR>", desc = "Write" },
	},

	-- Find and replace
	{ "<leader>r", ":%s/", desc = "Find and replace" },

	-- Gitsigns
	{ "<leader>s", group = "Gitsigns" },
	{ "<leader>sb", "<cmd>lua require('gitsigns').blame_line()<CR>", desc = "Blame line" },
	{ "<leader>sd", "<cmd>lua require('gitsigns').diffthis('~1')<CR>", desc = "Diff this" },
	{ "<leader>sn", "<cmd>lua require('gitsigns').next_hunk()<CR>", desc = "Next hunk" },
	{ "<leader>sp", "<cmd>lua require('gitsigns').preview_hunk()<CR>", desc = "Preview hunk" },
	{ "<leader>sr", "<cmd>lua require('gitsigns').reset_hunk()<CR>", desc = "Reset hunk" },
	{ "<leader>ss", "<cmd>lua require('gitsigns').stage_hunk()<CR>", desc = "Stage hunk" },
	{ "<leader>su", "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", desc = "Undo stage hunk" },

	-- Jump
	{ "<leader>t", "<cmd>lua require('flash').jump()<CR>", desc = "Jump" },

	-- System commands
	{ "<leader>x", "<cmd>!chmod +x %<CR>", desc = "Make executable" },
})

-- Block splitting
keymap("n", ".", "<cmd> TSJToggle <CR>", opts)

-- Press jk fast to enter normal mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("v", "kj", "<ESC>", opts)

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

-- Toggle LSP diagnostics
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
	isLspDiagnosticsVisible = not isLspDiagnosticsVisible
	vim.diagnostic.config({
		virtual_text = isLspDiagnosticsVisible,
		underline = isLspDiagnosticsVisible,
	})
end)
