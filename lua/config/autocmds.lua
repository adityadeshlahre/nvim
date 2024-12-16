-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Automatically save the session on exiting Neovim
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    require("auto-session").SaveSession()
  end,
})

-- Automatically load the session when entering Neovim if not in $HOME
-- vim.api.nvim_create_autocmd("VimEnter", {
--   group = vim.api.nvim_create_augroup("auto_session_restore", { clear = true }),
--   callback = function()
--     if vim.fn.getcwd() ~= vim.env.HOME then
--       require("auto-session").RestoreSession()
--     end
--   end,
--   nested = true,
-- })

-- Restore cursor position on file open
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= line_count then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})
