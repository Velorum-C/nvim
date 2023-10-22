local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
	return
end

-- -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "99999"

-- indent_blankline.setup({
-- 	indent = { char = "|" },
-- })

indent_blankline.setup()
