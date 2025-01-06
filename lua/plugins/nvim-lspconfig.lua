return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable ctrl-k because it's used for move up in insert mode
      keys[#keys + 1] = { "<c-k>", mode = { "i" }, false }
    end,
  },
}
