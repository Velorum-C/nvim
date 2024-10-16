return {
	-- "bluz71/vim-nightfly-colors",
	-- name = "nightfly",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd([[colorscheme nightfly]])
	-- 	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- end,

	"sainnhe/gruvbox-material",
	name = "gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "original"
		vim.g.gruvbox_material_enable_bold = "1"
		vim.g.gruvbox_material_cursor = "orange"
		vim.g.gruvbox_material_enable_italic = true
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
