# Productivity Neovim Config

Welcome to my personal Neovim configuration, built with productivity, aesthetics, and usability in mind. This setup leverages the power of `lazy.nvim` as a plugin manager and focuses on providing a fast, minimal, yet full-featured developer experience.

## Key Features

### UI Enhancements
- **[barbar.nvim](https://github.com/romgrk/barbar.nvim)**: Tabline and buffer management.
  - `Ctrl+q` → Close buffer
  - `Ctrl+,` / `Ctrl+.` → Navigate buffers
  - `Ctrl+<` / `Ctrl+>` → Move buffers

- **[codewindow.nvim](https://github.com/gorbit99/codewindow.nvim)**: Beautiful minimap.
  - `<leader>mo` / `mc` / `mf` / `mm` to control it

- **[dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)**: Fancy startup screen with ASCII art.

- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: Statusline with `vscode` theme.

- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)**: File tree UI.
  - `Ctrl+n` → Open sidebar
  - `Ctrl+m` → Close sidebar
- ** [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)**: Adds visual indentation lines.

### LSP & Autocompletion
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** + **[mason.nvim](https://github.com/williamboman/mason.nvim)**:
  - Preconfigured for `lua_ls`, `basedpyright`, `jdtls`
  - Formatting with `<leader>gf`
  - Go to definition: `gd`, Hover: `K`, Code actions: `<space>ca`

- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Autocompletion
  - Integrated with:
    - `cmp-nvim-lsp` for LSP
    - `LuaSnip` for snippets
    - `friendly-snippets` support

### Formatting & Linters
- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)**:
  - Formatters: `black`, `isort`, `prettier`, `stylua`
  - Linters: `eslint_d`
  - Keybinding: `<leader>gf` to format current file

### Markdown
- **[render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)**:
  - Syntax highlighting for Markdown with custom colors (Gold headings, OrangeRed bold, etc.)

### Others
- **[vim-commentary](https://github.com/tpope/vim-commentary)**:
  - Use `gc` to comment/uncomment lines

---

## Setup

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config ~/.config/nvim
nvim
```

## Requirements
- Neovim >= 0.9
- lazy.nvim as your plugin manager
- ripgrep, fd
- Language servers installed via :Mason
