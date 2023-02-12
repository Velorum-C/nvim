local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "snip",
			namr = "Snippet",
			dscr = "Create new snippet",
		}, {
			text({ "snip({", '\ttrig = "' }),
			insert(1, "trigger"),
			text({ '",', '\tnamr = "' }),
			insert(2, "name"),
			text({ '",', '\tdscr = "' }),
			insert(3),
			text({ '",', "},", "{", "\t" }),
			insert(4),
			text({ "", "})," }),
		}),
	},
	python = {
		snip({
			trig = "defm",
			namr = "define main",
			dscr = "Define main and call it",
		},
		{
			text({"def main():", "\t"}),
			insert(1, "main function goes here"),
			text({"", "", "", "if __name__ == \"__main__\":", "\tmain()"}),
		}),
	},
})
