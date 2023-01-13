local packer = require("packer")
local usePlugins = function(use)
	use("neovim-plugin-fork/packer.nvim")
	use("neovim-plugin-fork/tokyonight.nvim")
	use({ "neovim-plugin-fork/nvim-tree.lua", requires = { "neovim-plugin-fork/nvim-web-devicons" } })
	use({
		"neovim-plugin-fork/bufferline.nvim",
		requires = {
			"neovim-plugin-fork/nvim-web-devicons",
			"neovim-plugin-fork/vim-bbye",
		},
	})
	use({ "neovim-plugin-fork/lualine.nvim", requires = { "neovim-plugin-fork/nvim-web-devicons" } })
	use("neovim-plugin-fork/lualine-lsp-progress")
	use({ "neovim-plugin-fork/telescope.nvim", requires = { "neovim-plugin-fork/plenary.nvim" } })
	use("neovim-plugin-fork/telescope-env.nvim")
	use("neovim-plugin-fork/dashboard-nvim")
	use("neovim-plugin-fork/project.nvim")
	use({ "neovim-plugin-fork/nvim-treesitter", run = ":TSUpdate" })
	use({ "nvim-plugin/mason.nvim" })
	use({ "nvim-plugin/mason-lspconfig.nvim" })
	use("nvim-plug-gitee-fork/nvim-cmp")
	use("nvim-plug-gitee-fork/vim-vsnip")
	use("nvim-plug-gitee-fork/cmp-vsnip")
	use({ "nvim-plug-gitee-fork/cmp-nvim-lsp", name = "nvim_lsp" })
	use({ "nvim-plug-gitee-fork/cmp-buffer", name = "buffer" })
	use({ "nvim-plug-gitee-fork/cmp-path", name = "path" })
	use({ "nvim-plug-gitee-fork/cmp-cmdline", name = "cmdline" })
	use({ "jianshanbushishan/friendly-snippets" })
	use({ "william135/lspkind.nvim" })
	use({ "william135/indent-blankline.nvim" })
	use({ "william135/lspsaga.nvim" })
  use({ "william135/null-ls.nvim", require = "neovim-plugin-fork/plenary.nvim" })
  use({"yaozhijin/fzf.vim"})
end
packer.startup({
	usePlugins,
	config = {
		-- 并发数限制
		max_jobs = 16,
		-- 自定义源
		git = {
			default_url_format = "https://gitee.com/%s",
		},
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
