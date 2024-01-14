local status_ok, harpoon = pcall(require, "harpoon")
if not status_ok then
	return
end

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

harpoon.setup({
	save_on_toggle = false,
	save_on_change = true,
	enter_on_sendcmd = false,
	tmux_autoclose_windows = false,
	excluded_filetypes = {"harpoon"},
	mark_branch = true,
	tabline = false,
	tabline_prefix = "  ",
	tabline_suffix = "  "
})

require("telescope").load_extension("harpoon")
