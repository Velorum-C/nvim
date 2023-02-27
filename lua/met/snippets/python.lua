local group = vim.api.nvim_create_augroup("Python Snippets", { clear = true })
local file_pattern = "*.py"

local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local function cs(trigger, nodes, opts) --{{{
	local snippet = s(trigger, nodes)
	local target_table = snippets

	local pattern = file_pattern
	local keymaps = {}

	if opts ~= nil then
		-- check for custom pattern
		if opts.pattern then
			pattern = opts.pattern
		end

		-- if opts is a string
		if type(opts) == "string" then
			if opts == "auto" then
				target_table = autosnippets
			else
				table.insert(keymaps, { "i", opts })
			end
		end

		-- if opts is a table
		if opts ~= nil and type(opts) == "table" then
			for _, keymap in ipairs(opts) do
				if type(keymap) == "string" then
					table.insert(keymaps, { "i", keymap })
				else
					table.insert(keymaps, keymap)
				end
			end
		end

		-- set autocmd for each keymap
		if opts ~= "auto" then
			for _, keymap in ipairs(keymaps) do
				vim.api.nvim_create_autocmd("BufEnter", {
					pattern = pattern,
					group = group,
					callback = function()
						vim.keymap.set(keymap[1], keymap[2], function()
							ls.snip_expand(snippet)
						end, { noremap = true, silent = true, buffer = true })
					end,
				})
			end
		end
	end

	table.insert(target_table, snippet) -- insert snippet into appropriate table
end --}}}

-- Start Refactoring --

-- snip({
-- 	trig = "defm",
-- 	namr = "define main",
-- 	dscr = "Define main and call it",
-- },
-- {
-- 	text({"def main():", "\t"}),
-- 	insert(1, "main function goes here"),
-- 	text({"", "", "", "if __name__ == \"__main__\":", "\tmain()"}),
-- }),
-- snip({
-- 	trig = "while T",
-- 	namr = "try-catch",
-- 	dscr = "infinite loop that breaks out on exception",
-- },
-- {
-- 	text({"while True:", "\ttry:", "\t\t"}),
-- 	insert(1, "try statement"),
-- 	text({"\t", "except "}),
-- 	insert(2, "exception_name"),
-- 	text({":", "\t"}),
-- 	insert(3, "pass"),
--
-- }),
-- snip({
-- 	trig = "test",
-- 	namr = "unit test",
-- 	dscr = "Create a function to test another",
-- },
-- {
-- 	text({"def test_"}),
-- 	insert(1, "function_name():"),
-- 	text({"():", "\tassert "}),
-- 	insert(2, "function_name"),
-- 	text({" == "}),
-- 	insert(3, "value"),
-- }),

cs(
	"test",
	fmt( -- Create a function to test another
		[[
def test_{}():
	assert {}({}) == {}
]],
		{
			i(1, "function_name"),
			rep(1),
			i(2, "args"),
			i(3, "value"),
		}
	)
)

-- End Refactoring --

return snippets, autosnippets
