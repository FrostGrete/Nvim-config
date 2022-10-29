local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

-- Don't show diagnostic
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = false
--     }
-- )

local lsp_flags = {
	debounce_text_changes = 150,
}

require("lspkind").init({

	-- DEPRECATED (use mode instead): enables text annotations

	--

	-- default: true

	-- with_text = true,

	-- defines how annotations are shown

	-- default: symbol

	-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'

	mode = "symbol_text",

	-- default symbol map

	-- can be either 'default' (requires nerd-fonts font) or

	-- 'codicons' for codicon preset (requires vscode-codicons font)

	--

	-- default: 'default'

	preset = "codicons",

	-- override preset symbols

	--

	-- default: {}

	symbol_map = {

		Text = "",

		Method = "",

		Function = "",

		Constructor = "",

		Field = "ﰠ",

		Variable = "",

		Class = "ﴯ",

		Interface = "",

		Module = "",

		Property = "ﰠ",

		Unit = "塞",

		Value = "",

		Enum = "",

		Keyword = "",

		Snippet = "",

		Color = "",

		File = "",

		Reference = "",

		Folder = "",

		EnumMember = "",

		Constant = "",

		Struct = "פּ",

		Event = "",

		Operator = "",

		TypeParameter = "",
	},
})

require("lspconfig")["pyright"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require("lspconfig")["clangd"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require("lspconfig")["sumneko_lua"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
