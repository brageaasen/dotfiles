return {
	{
		"gorbit99/codewindow.nvim",
		config = function()
			local codewindow = require("codewindow")
			codewindow.setup({
				-- auto_enable = true,
			})
			codewindow.apply_default_keybinds()
		end,
		--    The default keybindings are as follows:
		-- <leader>mo - open the minimap
		-- <leader>mc - close the minimap
		-- <leader>mf - focus/unfocus the minimap
		-- <leader>mm - toggle the minimap
	},
}
