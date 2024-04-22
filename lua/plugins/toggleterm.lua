return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
  require("toggleterm").setup({
    -- Your toggleterm configuration settings here
  })

  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
      border = "double",
    },
    on_open = function(term)
      vim.cmd("startinsert")
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    on_close = function(term)
      vim.cmd("startinsert")
    end,
  })

  function _lazygit_toggle()
    lazygit:toggle()
  end

  vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<leader>t", "<:ToggleTerm<CR>", { noremap = true, silent = true })

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
	end,
}
