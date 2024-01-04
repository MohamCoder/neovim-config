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
     lspconfig.quick_lint_js.setup({})
     lspconfig.lua_ls.setup({})
     lspconfig.rust_analyzer.setup({})
      vim.keymap.set('n','K',vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action,{})
    end
  }
}

