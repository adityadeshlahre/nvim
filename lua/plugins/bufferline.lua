return {
  "akinsho/bufferline.nvim",
  version = "*", -- Use the latest stable version
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Required for icons
  require("bufferline").setup({
    options = {
      mode = "tabs", -- Set to "tabs" to use tab-based navigation
      show_buffer_close_icons = false, -- Hide close icons on buffers
      show_close_icon = false, -- Hide close icon in the tab bar
      close_command = "bdelete! %d", -- Command to close a tab
      right_mouse_command = "bdelete! %d", -- Close tab on right-click
      separator_style = "thin", -- Style for tab separators ("thin" or "thick")
      diagnostics = "nvim_lsp", -- Display LSP diagnostics in tabs
    },
  }),
}
