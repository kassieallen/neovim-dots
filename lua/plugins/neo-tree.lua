-- neotree plugin
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      },
    })

    require("neo-tree.sources.filesystem.commands").refresh(
      require("neo-tree.sources.manager").get_state("filesystem")
    )

    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {}) -- toggle neo-tree
  end
}

