return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup( {
        ensure_installed = { "lua_ls", "r_language_server" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
     local lspconfig = require("lspconfig")
     lspconfig.lua_ls.setup({})
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}
