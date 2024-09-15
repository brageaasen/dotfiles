return {
    "Mofiqul/vscode.nvim",
    config = function()
        -- Set Neovim background to dark (move outside the setup block)
        vim.o.background = 'dark'

        -- Load and configure the vscode theme
        local c = require('vscode.colors').get_colors()
        require('vscode').setup({
            -- Enable transparent background
            transparent = true,

            -- Enable italic comments
            italic_comments = true,

            -- Underline @markup.link.* variants
            underline_links = true,

            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,

            -- Override colors (from vscode.colors)
            color_overrides = {
                vscLineNumber = '#FFFFFF',
            },

            -- Override highlight groups
            group_overrides = {
                Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
            },
        })

        -- Apply the theme after setup
        vim.cmd.colorscheme "vscode"
    end,
}
