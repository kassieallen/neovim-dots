-- various plugins for ease of navigating git
return {
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require('gitsigns').setup({})
    end
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'kdheepak/lazygit.nvim',
    dependencies =  {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function ()
      require("telescope").load_extension("lazygit")

      vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', {})
    end,
  }
}
