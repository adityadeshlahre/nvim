return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    opts = {
      -- close_if_last_window = true,
      window = {
        width = 40,
      },
      source_selector = {
        winbar = false,
        statusline = false,
      },
      position = "right", -- or "left", "top", "bottom", or "float"
      filesystem = {
        -- hijack_netrw_behavior = "open_current",
        filtered_items = {
          visible = true,
          hide_dotfiles = false, -- Set this to false to always show dotfiles
        },
      },
    },
  },
}
