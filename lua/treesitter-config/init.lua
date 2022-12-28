require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "css", "lua", "html", "javascript", "php" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    
    additional_vim_regex_highlighting = false,
  },
}
