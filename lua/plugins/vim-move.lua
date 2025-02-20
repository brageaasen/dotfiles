return {
    'matze/vim-move', -- Load the vim-move plugin
    init = function()
        -- Use C + j/k to move lines up and down in visual mode
        vim.api.nvim_set_keymap('v', 'Cj', ':MoveLine(1)<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('v', 'Ck', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
    end,
}
