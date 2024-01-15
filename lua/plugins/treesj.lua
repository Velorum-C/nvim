return {
	"Wansmer/treesj",
	-- keys = { "." },
	event = "VeryLazy",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
			check_syntax_error = false,
			max_join_length = 80,
			cursor_behavior = "hold",
			notify = true,
			dot_repeat = true,
			langs = {
				lua = require("treesj.langs.lua"),
				python = require("treesj.langs.python"),
				cpp = require("treesj.langs.cpp"),
				c = require("treesj.langs.c"),
			},
		})
	end,
}
