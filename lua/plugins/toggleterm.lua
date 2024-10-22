-- toggleterm plugin
return {
  'akinsho/toggleterm.nvim',
  config = function ()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]],
      auto_scroll = true,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = -20,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
    })
  end,
}
