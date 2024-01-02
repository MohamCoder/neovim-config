return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
     filesystem = {
        bind_to_cwd = false, 
      }
    })
    vim.keymap.set('n','<C-n>',':Neotree filesystem reveal left<CR>',{})
  end
}
