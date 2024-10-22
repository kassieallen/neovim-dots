-- purely visual/appearance plugins
return {
  {
    'mellow-theme/mellow.nvim',
    config = function ()
      vim.cmd('colorscheme mellow')
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
  },
  {
    'ryanoasis/vim-devicons',
  },
  {
   'stevearc/dressing.nvim',
  },
  {
    'Yggdroot/indentLine',
  },
  {
    'nvim-lua/popup.nvim',
  },
  {
    'tpope/vim-commentary',
  },
  {
    'tpope/vim-surround',
  },
}
