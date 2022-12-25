local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Set Keymaps
vim.keymap.set("n", "<leader>ps", ":PackerStatus<cr>", { desc = "[Packer] - PackerStatus"})

-- PLUGINS HERE
return packer.startup(function(use)
    -- TODO - Plugins to look interaction

    -- folke/trouble.nvim
    -- 'mfussenegger/nvim-dap'
    -- "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    -- "RRethy/vim-illuminate"
    -- "lewis6991/gitsigns.nvim"
    -- undotree

        -- Essentials
    use { "wbthomason/packer.nvim" } -- Have packer manage itself
    use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
    use { "lewis6991/impatient.nvim" }
    use { "nvim-telescope/telescope.nvim" }
    use { "nvim-treesitter/nvim-treesitter" }
    -- use { "nvim-treesitter/nvim-tree-docs" }

        -- Dead easy lsp setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},

            -- Language specific
            {'simrat39/rust-tools.nvim'}
        }
    }
    
    -- Eye candy
    use { "nvim-lualine/lualine.nvim" }
    use { "akinsho/bufferline.nvim" }
    use { "goolord/alpha-nvim" }
    use { "folke/which-key.nvim" }

        -- Colorschemes
    use { "shaunsingh/nord.nvim" }
    use { "morhetz/gruvbox" }
    use { "folke/tokyonight.nvim" }


        -- The rest
    use { "windwp/nvim-autopairs" } -- Autopairs, integrates with both cmp and treesitter
    use { "numToStr/Comment.nvim" }
    use { "JoosepAlviste/nvim-ts-context-commentstring" }
    use { "kyazdani42/nvim-web-devicons" }
    use { "kyazdani42/nvim-tree.lua" }
    use { "moll/vim-bbye" }    --  Adds Bdelete command
    use { "akinsho/toggleterm.nvim" }
    use { "ahmedkhalf/project.nvim" }
    use { "theprimeagen/harpoon" }
    use { "lukas-reineke/indent-blankline.nvim" }
    use { "ggandor/leap.nvim"}
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim",}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
