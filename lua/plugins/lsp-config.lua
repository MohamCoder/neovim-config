return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "quick_lint_js" , "lua_ls","rust_analyzer" }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
     lspconfig.quick_lint_js.setup({flags = { allow_incremental_sync = false}})
     lspconfig.lua_ls.setup({flags = { allow_incremental_sync = false}})
     lspconfig.rust_analyzer.setup({flags = { allow_incremental_sync = false}})
      vim.keymap.set('n','K',vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action,{})
    end
  }
}

