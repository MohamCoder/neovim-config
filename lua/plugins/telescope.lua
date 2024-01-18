return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.api.nvim_set_keymap('n', '<C-p>',':lua require("telescope.builtin").find_files({ cwd = "/mnt/d/dev/projects" })<CR>', {noremap = true , silent = true})
      vim.api.nvim_set_keymap('n', '<leader>fg',':lua require("telescope.builtin").live_grep({ cwd = "/mnt/d/dev/projects" })<CR>', {noremap = true , silent = true})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
