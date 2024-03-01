-- Stolen graciously from netfri25/neovim-config
return {
   'mfussenegger/nvim-dap',
   lazy = true,
   -- ft = { 'c', 'cpp', 'rust' },

   keys = {
      { '<leader>db', require('dap').toggle_breakpoint, desc = "dap toggle breakpoint" },
      { '<leader>dc', require('dap').continue, desc = "dap continue" },
      { '<leader>dso',require('dap').step_over, desc = "dap step over" },
      { '<leader>dsi',require('dap').step_into, desc = "dap step into" },
      { '<leader>dr', require('dap').repl_open, desc = "dap open REPL" },
   },

   config = function()
      local dap = require('dap')

      dap.adapters.codelldb = {
         type = 'server',
         port = '${port}',
         executable = {
            command = vim.fn.exepath('codelldb'),
            args = { '--port', '${port}' }
         }
      }

      dap.configurations.c = {
         {
            name = "Launch file",
            type = "codelldb",
            request = "launch",
            program = function() return vim.fn.input('Path to executable: ') end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
         },
      }

      dap.configurations.cpp = dap.configurations.c
      dap.configurations.rust = dap.configurations.c
   end,
}
