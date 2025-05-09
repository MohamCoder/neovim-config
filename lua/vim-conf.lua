vim.cmd("set autochdir")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.diagnostic.config({ virtual_text = true })
vim.g.mapleader = " "
vim.wo.number=true
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
