return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"windwp/nvim-ts-autotag",
		"windwp/nvim-autopairs",
	},
	config = function()
		local ts = require("nvim-treesitter.configs")

		ts.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"vim",
				"bash",
				"javascript",
				"json",
				"python",
				"typescript",
				"tsx",
				"css",
				"rust",
				"java",
				"yaml",
				"markdown",
				"markdown_inline",
			}, -- one of "all" or a list of languages
			ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
			auto_install = true, -- Auto install a parser when entering a file
			highlight = { enable = true }, -- false will disable the whole extension
			indent = { enable = true, disable = { "python" } },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			autopairs = { enable = true },
			autotag = { enable = true },
		})
	end,
}
