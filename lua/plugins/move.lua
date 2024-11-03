return {
    "fedepujol/move.nvim",
    event = "BufRead", -- Trigger when a buffer is read
    config = function()
        require("move").setup({
            -- Configuration options here if needed, specific to move.nvim
        })
        local opts = { noremap = true, silent = true }

        -- Normal-mode commands
        vim.keymap.set('n', '<leader>j', ':MoveLine(1)<CR>', opts)
        vim.keymap.set('n', '<leader>k', ':MoveLine(-1)<CR>', opts)
        vim.keymap.set('n', '<leader>h', ':MoveHChar(-1)<CR>', opts)
        vim.keymap.set('n', '<leader>l', ':MoveHChar(1)<CR>', opts)
        vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
        vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

        -- Visual-mode commands
        vim.keymap.set('v', '<leader>j', ':MoveBlock(1)<CR>', opts)
        vim.keymap.set('v', '<leader>k', ':MoveBlock(-1)<CR>', opts)
        vim.keymap.set('v', '<leader>h', ':MoveHBlock(-1)<CR>', opts)
        vim.keymap.set('v', '<leader>l', ':MoveHBlock(1)<CR>', opts)
    end,
}
