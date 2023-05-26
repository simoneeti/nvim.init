require("plugins.lualine-config")
require("plugins.coc-config")

return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use "morhetz/gruvbox"
	use {'neoclide/coc.nvim', branch= 'release'}
	use {
		'tanvirtin/monokai.nvim',
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
				require("nvim-tree").setup {}
			end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

end)
