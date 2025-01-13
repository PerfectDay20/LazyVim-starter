-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true

-- change cursor color: https://neovim.io/doc/user/faq.html#faq
vim.api.nvim_set_hl(0, "MyCursor", { fg = "red", bg = "red" })

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25-MyCursor,r-cr-o:hor20"

-- disable list mode
vim.opt.list = false

-- enable ssh remote copy and paste
-- the default conf in the help has issues when paste with 'p'
-- so the below config is from https://github.com/neovim/neovim/discussions/28010#discussioncomment-9877494
vim.o.clipboard = "unnamedplus"

local function paste()
  return {
    vim.fn.split(vim.fn.getreg(""), "\n"),
    vim.fn.getregtype(""),
  }
end

vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = paste,
    ["*"] = paste,
  },
}

-- set background to light
-- because on ipad it defaults to dark while on mac defaults to light
-- this also reduce the first screen splash on mac
vim.opt.background = "light"

-- set ui to english
vim.cmd("language C")

-- disable language provider support (lua and vimscript plugins only)
-- https://sookocheff.com/post/vim/neovim-java-ide/
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0
