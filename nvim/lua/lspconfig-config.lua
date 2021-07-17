local setup = function()
	-- Enable snippetSupport
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.completion.completionItem.resolveSupport = {
		properties = {
			'documentation',
			'detail',
			'additionalTextEdits',
		}
	}

	-- npm install -g pyright
	require'lspconfig'.pyright.setup{
		capabilities = capabilities,
	}
end

return setup
