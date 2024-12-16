return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      window = {
        border = "single",
        position = "bottom",
        margin = { 0, 0, 0, 0 }, -- Fine-tune spacing around the menu
        padding = { 2, 2, 2, 2 }, -- Add padding inside the menu
        winblend = 10, -- Transparency of the floating window
      },
    })
  end,
}
