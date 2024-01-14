-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

return {
	"jose-elias-alvarez/null-ls.nvim",
	opt = {
		debug = false,
		sources = {
			-- JavaScript
			formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),

			-- Lua
			formatting.stylua,

			-- Python
			formatting.black.with({ extra_args = { "--fast" } }),
			diagnostics.flake8,

			-- C
			-- formatting.clang_format,
		},
	},
}
