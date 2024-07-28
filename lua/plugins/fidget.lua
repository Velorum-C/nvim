return {
	"j-hui/fidget.nvim",
	event = "InsertEnter",
	config = function()
		require("fidget").setup({})
	end,
}
