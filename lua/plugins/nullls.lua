local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.eslint_d,
		null_ls.builtins.formatting.lua_format,
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.ltrs,
		null_ls.builtins.formatting.rustfmt,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.diagnostics.cpplint.with({
			-- override args completely to make sure ordering is correct
			args = { "--filter=-legal/copyright", "$FILENAME" },
		}),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		end
	end,
})
