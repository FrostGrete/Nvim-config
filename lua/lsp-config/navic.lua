local navic = require("nvim-navic")

require("lspconfig").pyright.setup {
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
}



local navic = require("nvim-navic")



require("lualine").setup({
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    }
})

navic.setup {

  icons = {

    File = ' ',

    Module = ' ',

    Namespace = ' ',

    Package = ' ',

    Class = ' ',

    Method = ' ',

    Property = ' ',

    Field = ' ',

    Constructor = ' ',

    Enum = ' ',

    Interface = ' ',

    Function = ' ',

    Variable = ' ',

    Constant = ' ',

    String = ' ',

    Number = ' ',

    Boolean = ' ',

    Array = ' ',

    Object = ' ',

    Key = ' ',

    Null = ' ',

    EnumMember = ' ',

    Struct = ' ',

    Event = ' ',

    Operator = ' ',

    TypeParameter = ' '

  }
}
