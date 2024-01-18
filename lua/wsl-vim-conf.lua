vim.api.nvim_set_keymap('n', 'p', '"+p:match Search /\\r/<CR>:%s/\\r//g<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', 'p', '"+p:match Search /\\r/<CR>:%s/\\r//g<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('v', 'y', '"+y', {noremap = true})
vim.cmd("set autochdir")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.number=true
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
