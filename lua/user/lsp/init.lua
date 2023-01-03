local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

local lspconfig = require'lspconfig'
local configs = require 'lspconfig.configs'

-- Configure it
configs.blade = {
  default_config = {
    -- Path to the executable: laravel-dev-generators
    cmd = { "laravel-dev-generators", "lsp" },
    filetypes = {'blade'};
    root_dir = function(fname)
      return lspconfig.util.find_git_ancestor(fname)
    end;
    settings = {};
  };
}
-- Set it up
lspconfig.blade.setup{
  -- Capabilities is specific to my setup.
  capabilities = capabilities
}
