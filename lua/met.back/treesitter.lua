return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"p00f/nvim-ts-rainbow",
		"windwp/nvim-ts-autotag",
	},
	opt = {
		ensure_installed = {
			"bash",
			"c",
			"javascript",
			"json",
			"lua",
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
		highlight = {
			enable = true, -- false will disable the whole extension
			-- disable = { "" }, -- list of language that will be disabled
		},
		autopairs = {
			enable = true,
		},
		indent = {
			enable = true,
			disable = { "python" },
		},
		autotag = {
			enable = true,
		},
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = nil, -- Do not enable for files with more than n lines, int
			-- colors = {}, -- table of hex strings
			-- termcolors = {} -- table of colour name strings
		},
	}
}
