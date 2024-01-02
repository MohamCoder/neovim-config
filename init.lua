vim.api.nvim_set_keymap('n', 'p', '"+p:%s/\r//g<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', 'p', '"+p:%s/\r//g<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', 'y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('v', 'y', '"+y', {noremap = true})

vim.cmd("set autochdir")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.wo.number=true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("lazy").setup("plugins")

