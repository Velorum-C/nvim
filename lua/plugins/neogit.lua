return {
	"NeogitOrg/neogit",
	-- keys = { "<leader>c" },
	event = { "BufReadPre" },
	opts = {
		status = {
			recent_commit_include_author_info = true,
		},
	},
}
