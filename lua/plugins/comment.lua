return {
	"numToStr/Comment.nvim",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	keys = "<leader>c",
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>c",
			},
			opleader = {
				line = "<leader>c",
			},
		})
	end,
}
