-- collapse empty dirs chain as one, just like Intellij IDEA Java package path
-- https://www.reddit.com/r/neovim/comments/16obinc/neotree_single_subfolder/

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      scan_mode = "deep",
      group_empty_dirs = true,
    },
  },
}
