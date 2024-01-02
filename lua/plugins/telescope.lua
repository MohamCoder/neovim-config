return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.api.nvim_set_keymap('n', '<C-p>', ':lua require("telescope.builtin").find_files({cwd = "/mnt/c/dev/projects"})<CR>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep({cwd = "/mnt/c/dev/projects"})<CR>', {noremap = true, silent = true})
  end
}
