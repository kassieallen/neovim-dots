-- neovim DAP plugin
return {
  {
    "mfussenegger/nvim-dap",
    config = function()
			local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
		end,
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
			require("dapui").setup()
		end,
  },

  -- DAP keybinds
  vim.keymap.set("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", {}), -- Debugger step into 
  vim.keymap.set("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", {}), -- debugger step over
  vim.keymap.set("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", {}), -- debugger step out
  vim.keymap.set("n", "<Leader>dc>", "<cmd>lua require'dap'.continue()<CR>", {}), -- debugger continue 
  vim.keymap.set("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {}), -- toggle breakpoint
  vim.keymap.set("n", "<Leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {}), -- set conditional breakpoint
  vim.keymap.set("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", {}), -- debugger reset
  vim.keymap.set("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", {}), -- debugger run last
}
