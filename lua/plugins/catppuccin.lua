return { "catppuccin/nvim", name = "catppuccin", 
    priority = 1000,
    config = function()
        -- set cappuccin theme
        vim.cmd([[colorscheme catppuccin]])
    end
}
