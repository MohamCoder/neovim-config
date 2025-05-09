return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function() end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      lspconfig.svelte.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        flags = { allow_incremental_sync = false },
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
