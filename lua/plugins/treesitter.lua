return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    local configs = require("nvim-treesitter.configs")
    require ("nvim-treesitter.install").compilers = { "gcc"}
    configs.setup({
      ensure_installed = { "lua", "javascript", "html",'css' },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end
}
