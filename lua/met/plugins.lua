local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Install your plugins here
local plugins = {
	"nvim-lua/plenary.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"akinsho/bufferline.nvim",
	"moll/vim-bbye",
	"nvim-lualine/lualine.nvim",
	"akinsho/toggleterm.nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/impatient.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"goolord/alpha-nvim",
	"folke/which-key.nvim",
	"Vimjas/vim-python-pep8-indent",
	"ThePrimeagen/harpoon",
	"mbbill/undotree",
	"tpope/vim-fugitive",
	"jose-elias-alvarez/null-ls.nvim",
	"RRethy/vim-illuminate",
	"nvim-telescope/telescope.nvim",
	"lewis6991/gitsigns.nvim",
	"NeogitOrg/neogit",
	"mfussenegger/nvim-dap",
	"mfussenegger/nvim-dap-python",
	"folke/flash.nvim",
	"robitx/gp.nvim",
	"christoomey/vim-tmux-navigator",
	"folke/tokyonight.nvim",
	"lunarvim/darkplus.nvim",
	"lunarvim/colorschemes",
	"rose-pine/neovim",
	as = "rose-pine",
	"nvim-treesitter/nvim-treesitter",
	"p00f/nvim-ts-rainbow",
	"windwp/nvim-ts-autotag",
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			{ "mfussenegger/nvim-dap" },
		},
	},
	{
		"Wansmer/treesj",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			{ "MunifTanjim/nui.nvim" },
			{ "rcarriga/nvim-notify" },
		},
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	},
}
local opts = {}

require("lazy").setup(plugins, opts)
