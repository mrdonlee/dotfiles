return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "ruff_fix", "ruff_format" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			go = { "goimports", "gofmt" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters = {
			ruff_fix = {
				-- Append CLI arguments to the ruff command execution
				args = {
					"check",
					"--fix",
					"--select=I", -- Force enable import sorting rules globally
					"--force-exclude",
					"--exit-zero",
					"--no-cache",
					"--stdin-filename",
					"$FILENAME",
					"-",
				},
			},
		},
	},
}
