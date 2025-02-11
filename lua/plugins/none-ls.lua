return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black, -- add this line
        require("none-ls.diagnostics.eslint_d")
      },
    })
    vim.keymap.set("n", "<Leader>gf", ":lua vim.lsp.buf.format()<CR>", {})
  end,
}
