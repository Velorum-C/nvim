return {



	"NeogitOrg/neogit",
	-- keys = { "<leader>g" },
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = true,
	opts = {
		status = {
			recent_commit_include_author_info = true,
		},
	},
}
