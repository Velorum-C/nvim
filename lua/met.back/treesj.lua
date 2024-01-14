local status_ok, treesj = pcall(require, "treesj")
if not status_ok then
  return
end

treesj.setup({
	use_default_keymaps = false,
	check_syntax_error = false,
	max_join_length = 80,
	cursor_behavior = 'hold',
	notify = true,
	dot_repeat = true,
	langs = {
		lua = require("treesj.langs.lua"),
		python = require("treesj.langs.python"),
		cpp = require("treesj.langs.cpp"),
		c = require("treesj.langs.c")
	}
})
