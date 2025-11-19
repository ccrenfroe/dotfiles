vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.notify("Welcome to Neovim, Stoic!")
  end,
})

