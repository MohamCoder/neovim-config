return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    local configs = require("nvim-treesitter.configs")
    require ("nvim-treesitter.install").compilers = { "gcc"}
    configs.setup({
      auto_install = true,
      ensure_installed = { "svelte","lua", "javascript", "html",'css' ,"python","norg" },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end
}
