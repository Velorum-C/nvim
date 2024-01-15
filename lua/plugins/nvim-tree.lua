return {
	"nvim-tree/nvim-tree.lua",
	keys = { "<leader>e" },
	-- dependencies = {"nvim-tree/nvim-web-devicons"},
	config = function()
		local tree = require("nvim-tree")

		tree.setup({
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			renderer = {
				root_folder_modifier = ":t",
				icons = {
					glyphs = {
						default = " ",
						symlink = " ",
						folder = {
							arrow_open = " ",
							arrow_closed = " ",
							default = " ",
							open = " ",
							empty = " ",
							empty_open = " ",
							symlink = " ",
							symlink_open = " ",
						},
						git = {
							unstaged = " ",
							staged = "S ",
							unmerged = " ",
							renamed = "➜ ",
							untracked = "U ",
							deleted = " ",
							ignored = "◌ ",
						},
					},
				},
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = " ",
					info = " ",
					warning = " ",
					error = " ",
				},
			},
		})
	end,
}
