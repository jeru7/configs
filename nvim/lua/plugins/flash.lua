return {
  "folke/flash.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
  config = function()
    require("flash").setup()
  end,
}
