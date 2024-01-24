return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						-- ["l="] = { query = "@assignment.lhs", desc = "Select LHS of assignment" },
						["l="] = "@assignment.lhs",
						["r="] = { query = "@assignment.rhs", desc = "Select RHS of assignment" },
						["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter" },
						["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter" },
						["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },
						["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },
						["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
						["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },
						["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
					},
				},
			},
		})
	end,
}
