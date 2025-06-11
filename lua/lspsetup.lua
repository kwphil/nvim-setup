return function()
	require('mason').setup()
	require('mason-lspconfig').setup({
		ensure_installed={'clangd'},
	})

	require('lspconfig').clangd.setup {
		cmd = { 'clangd', '--background-index' },
		on_attach = function(_, bufnr)
			local map = vim.api.nvim_buf_set_keymap
			local opts = { noremap=true, silent=true }
			map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
			map(bufnr, 'n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
		end
	}
end
