return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "javascript", "html" },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end
}
