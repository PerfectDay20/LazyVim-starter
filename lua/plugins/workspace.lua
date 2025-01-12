return {
  "natecraddock/workspaces.nvim",
  lazy = false,
  opts = {
    hooks = {
      open = function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
    },
  },
}
