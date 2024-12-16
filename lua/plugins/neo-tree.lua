return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    opts = {
      position = "right", -- or "left", "top", "bottom", or "float"
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false, -- Set this to false to always show dotfiles
        },
      },
    },
  },
}

