local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local lsp_flags = {
	  debounce_text_changes = 150,
}

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
	flags = lsp_flags,
}

require('lspconfig')['clangd'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
}

require('lspconfig')['sumneko_lua'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
