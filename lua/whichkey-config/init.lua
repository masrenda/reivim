local wk = require("which-key")

local mappings = {
  q = { ":q<cr>", "Quit" }
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
