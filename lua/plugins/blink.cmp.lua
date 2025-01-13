return {
  "saghen/blink.cmp",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    -- https://cmp.saghen.dev/configuration/keymap.html#presets
    keymap = { preset = "super-tab" },
  },
}
