local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
	return
end

-- -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "99999"

-- local highlight = {
-- 	"ElectricBlue",
-- }

-- local hooks = require "ibl.hooks"
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--     vim.api.nvim_set_hl(0, "ElectricBlue", { fg = "#7DF9FF" })
-- end)

indent_blankline.setup({
	indent = {
		char = "|",
		--highlight = highlight
	},
})
