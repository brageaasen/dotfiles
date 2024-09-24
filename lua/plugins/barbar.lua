return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",  -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    config = function()
      -- Close current buffer
      vim.keymap.set("n", "<C-q>", ":BufferClose<CR>", {})
      -- Move to previous/next
      vim.keymap.set("n", "<C-,>", ":BufferPrevious<CR>", {})
      vim.keymap.set("n", "<C-.>", ":BufferNext<CR>", {})
      -- Re-order to previous/next
      vim.keymap.set("n", "<C-<>", ":BufferMovePrevious<CR>", {})
      vim.keymap.set("n", "<C->>", ":BufferMoveNext<CR>", {})
    end,
  },
}
