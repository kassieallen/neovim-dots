-- LSP setup and configuration with Mason
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
        ensure_installed = { "lua_ls", "rust_analyzer", "clangd" } -- add LSPs here
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities() -- add this variable as an argument to every LSP you add
      local lspconfig = require("lspconfig")

      -- lua_ls
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

--      commented out for use with rustaceanvim
-- 
--      -- rust_analyzer
--      lspconfig.rust_analyzer.setup({
--        capabilities = capabilities
--      })

      -- clangd
      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      -- nvim-lsp keybinds
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- show documentation for keywords
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) -- go to definition
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {}) -- query code actions for warnings and errors
    end
  }
}
