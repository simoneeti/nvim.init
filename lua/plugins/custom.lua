return {
  {
    'projekt0n/github-nvim-theme',
    config = function() require('github-theme').setup {} end
  },
  {
    "phaazon/hop.nvim",
    config = function() require 'hop'.setup {} end,
    lazy = false
  },
  {
    "b4skyx/serenade",
    lazy = false
  },
  {
    "junegunn/goyo.vim",
    lazy = false
  },
  { "mfussenegger/nvim-treehopper", lazy = false }
}
