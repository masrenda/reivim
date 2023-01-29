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
<br>
<pre>
nvim
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
</details>

### Plugins

You can delete, edit, or add plugins to the `~/PATH/nvim/lua/user/plugins.lua` file.

Find `return packer.startup(function(use)`, then add the plugin below it.

```lua
...

return packer.startup(function(use)
  -- My plugins here
  use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" } -- Useful lua functions used by lots of plugins
  use { "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" } -- Autopairs, integrates with both cmp and treesitter
  use { "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" }
  use 'authorplugin/plugin'

...
```

You don't need to enter `commit` and `{}` there.

### Snippets

If we look at the directory structure of the `snippets` folder, there's one file in each folder there that shouldn't be renamed, namely: `package.json`

```bash
snippets
├── blade
│   ├── blade.json
│   ├── helpers.json
│   ├── livewire.json
│   ├── package.json    <<
│   └── snippets.json
├── html
│   ├── html.json
│   └── package.json    <<
├── md
│   ├── md.json
│   └── package.json    <<
└── php
    ├── package.json    <<
    └── php.json
```

Let's take one example in the php snippet:

The `package.json` file contains `name`, `version`, `description`, etc.

```json
{
  "name": "php",
  "version": "1.0.0",
  "description": "PHP code snippets",
  "contributes": {
    "snippets": [
      {
        "language": [
          "php",
          "blade",
          "blade.php"
        ],
        "path": "./php.json"    <<
      }
    ]
  }
}
```

In the `php.json` file, that's where the snippet is. You can create a snippet by following the example.

```json
{
  "class …": {
    "prefix": "class",
    "body": [
      "class ${1:ClassName} ${2:extends ${3:AnotherClass}} ${4:implements ${5:Interface}} {",
      "\t$0",
      "}",
      ""
    ],
    "description": "Class definition"
  },
  "PHPDoc class …": {
    "prefix": "doc_class",
    "body": [
      "/**",
      " * ${6:undocumented class}",
      " */",
      "class ${1:ClassName} ${2:extends ${3:AnotherClass}} ${4:implements ${5:Interface}} {",
      "\t$0",
      "}",
      ""
    ],
    "description": "Documented Class Declaration"
  },
  "function __construct": {
    "prefix": "con",
    "body": [
      "${1:public} function __construct(${2:${3:Type} \\$${4:var}${5: = ${6:null}}}) {",
      "\t\\$this->${4:var} = \\$${4:var};$0",
      "}"
    ]
  }
}
```
