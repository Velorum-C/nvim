return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "▎",
			-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
			vim.wo.colorcolumn == "99999"
		}
	},
	config = function()
		require("ibl").setup()
	end
}
