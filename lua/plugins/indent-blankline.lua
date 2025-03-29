return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        -- Set the highlight color
        vim.api.nvim_set_hl(0, "IblIndent", { fg = "#5c6370" }) -- soft gray

        -- Set scope line color too
        vim.api.nvim_set_hl(0, "IblScope", { fg = "#c678dd" }) -- purple

        -- Plugin config
        require("ibl").setup({
            indent = { char = "│" },
            scope = {
                enabled = true,
                show_start = true,
                show_end = true,
            },
            exclude = {
                filetypes = {
                    "dashboard",
                    "alpha",
                    "neo-tree",
                    "Outline",
                    "lazy",
                    "help",
                    "startify",
                    "terminal",
                },
                buftypes = {
                    "terminal",
                    "nofile",
                },
            },
        })
    end,
}
