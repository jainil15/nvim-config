-- This file on be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },

			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("folke/zen-mode.nvim")
	use("github/copilot.vim")
	use("neovim/nvim-lspconfig")
	use({
		"heavenshell/vim-jsdoc",
		ft = { "javascript", "javascript.jsx", "typescript" },
		config = function()
			-- You can add additional configuration here if needed
		end,
	})

	use("nvimdev/lspsaga.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("feline-nvim/feline.nvim")
	-- use('wellle/context.vim')
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	})
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({})
		end,
		-- Uncomment next line if you want to follow only stable versions
		-- tag = "*"
	})
	use("nvim-treesitter/nvim-treesitter-context")

	use("lewis6991/gitsigns.nvim")
	use("stevearc/conform.nvim")
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("nvim-lua/plenary.nvim") -- don't forget to add this one if you don't have it yet!
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Colorschemes
	use({ "olimorris/onedarkpro.nvim", as = "onedarkpro" })
	use({ "bluz71/vim-moonfly-colors", as = "moonfly" })
	use({ "rose-pine/neovim", as = "rose-pine" })
	use("folke/tokyonight.nvim")
	use({ "ellisonleao/gruvbox.nvim", as = "gruvbox" })
end)
