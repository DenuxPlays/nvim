local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = cmp.setup({
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select = false}),
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		["<C-Space>"] = cmp.mapping.complete(),
  	}
})
