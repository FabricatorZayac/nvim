return {
  "shoumodip/compile.nvim",

  keys = {
    { "<leader>cc", ":Compile<CR>" },
    { "<leader>cC", ":Recompile<CR>" },
  },

  config = function ()
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function ()
        if (vim.fn.expand("%") == "*compilation*") then
          vim.api.nvim_buf_set_keymap(0, "n", "<ESC>", ":q<CR>", {})
          vim.api.nvim_input("<c-w>J")
        end
      end
    })
  end
}
