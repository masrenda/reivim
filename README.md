# Renvim

I've set up this configuration for javascript developers.

> **Warning** - If you wanna try customizing the configuration other than what's given in the documentation, do it at your own risk.

## Features

*   Rich in Plugins
*   Customizing Snippets

## Installation

You can follow these steps:

```bash
git clone https://github.com/masrenda/renvim-dotfiles
cd renvim-dotfiles
mv nvim ~/PATH/.config/
```

## Customizing

<details>
<summary>
Directory Structure
</summary>  
</details>
<pre>
├── init.lua
├── lua
│   └── user
│       ├── autocommands.lua
│       ├── autopairs.lua
│       ├── bufferline.lua
│       ├── cmp.lua
│       ├── colorscheme.lua
│       ├── comment.lua
│       ├── dap.lua
│       ├── gitsigns.lua
│       ├── illuminate.lua
│       ├── impatient.lua
│       ├── indentline.lua
│       ├── keymaps.lua
│       ├── lsp
│       │   ├── handlers.lua
│       │   ├── init.lua
│       │   ├── mason.lua
│       │   ├── null-ls.lua
│       │   └── settings
│       │       ├── pyright.lua
│       │       └── sumneko_lua.lua
│       ├── lualine.lua
│       ├── neosolarized.lua
│       ├── nvim-tree.lua
│       ├── options.lua
│       ├── plugins.lua
│       ├── project.lua
│       ├── telescope.lua
│       ├── toggleterm.lua
│       └── treesitter.lua
├── plugin
│   └── packer_compiled.lua
└── snippets
    ├── blade
    │   ├── blade.json
    │   ├── helpers.json
    │   ├── livewire.json
    │   ├── package.json
    │   └── snippets.json
    ├── html
    │   ├── html.json
    │   └── package.json
    ├── md
    │   ├── md.json
    │   └── package.json
    └── php
        ├── package.json
        └── php.json
</pre>

### Plugins

You can delete, edit, or add plugins to the `~/PATH/nvim/lua/user/plugins.lua` file.

### Snippets
