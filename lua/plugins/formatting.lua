return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				markdown = { "prettier" },
				html = { "prettier" },
				python = { "autopep8" },
				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
				lsp_format = true,
			},
			formatter_options = {
				autopep8 = {
					args = { "--max-line-length", "120" },
				},
				stylua = {
					args = { "--config-path", "~/.stylua.toml" },
				},
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.py",
			callback = function()
				conform.format({ bufnr = vim.api.nvim_get_current_buf() })
			end,
		})
	end,
}
