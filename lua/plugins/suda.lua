-- Stolen graciously from netfri25/neovim-config
return {
   'lambdalisue/suda.vim',
   lazy = true,
   cmd = { 'SudaRead', 'SudaWrite' },

   config = function()
      vim.g.suda_smart_edit = 1
   end
}
