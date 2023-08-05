local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "cooperuser/glowbeam.nvim" },
	{ "Mofiqul/dracula.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},
	{ "nvim-tree/nvim-web-devicons" },
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				-- The first entry (without a key) will be the default handler
				-- and will be called for each installed server that doesn't have
				-- a dedicated handler.
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
				-- Next, you can provide a dedicated handler for specific servers.
				-- For example, a handler override for the `rust_analyzer`:
				-- ["rust_analyzer"] = function ()
				--     require("rust-tools").setup {}
				-- end
			})
		end,
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "jose-elias-alvarez/null-ls.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				automatic_setup = true,
				ensure_installed = { "shfmt", "prettierd", "stylua", "eslint_d" },
				handlers = {},
			})
		end,
	},
	{ "windwp/nvim-autopairs" },
	{ "Djancyp/outline" },
	{ "terrortylor/nvim-comment" },
	{ "windwp/nvim-ts-autotag" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{
		"linrongbin16/lsp-progress.nvim",
		event = { "VimEnter" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ "folke/which-key.nvim" },
	{ "phaazon/hop.nvim" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },
	{ "mattn/emmet-vim" },
	{
		"iamcco/markdown-preview.nvim",
		config = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end,
	},
	{ "gioele/vim-autoswap" },
	{
		"crusj/bookmarks.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("bookmarks").setup({
				storage_dir = "", -- Default path: vim.fn.stdpath("data").."/bookmarks,  if not the default directory, should be absolute path",
				mappings_enabled = true, -- If the value is false, only valid for global keymaps: toggle、add、delete_on_virt、show_desc
				keymap = {
					toggle = "`", -- Toggle bookmarks(global keymap)
					add = "ma", -- Add bookmarks(global keymap)
					jump = "<CR>", -- Jump from bookmarks(buf keymap)
					delete = "md", -- Delete bookmarks(buf keymap)
					delete_on_virt = "md", -- Delete bookmark at virt text line(global keymap)
					show_desc = "ms", -- show bookmark desc(global keymap)
				},
				width = 0.8, -- Bookmarks window width:  (0, 1]
				height = 0.6, -- Bookmarks window height: (0, 1]
				preview_ratio = 0.4, -- Bookmarks preview window ratio (0, 1]
				preview_ext_enable = false, -- If true, preview buf will add file ext, preview window may be highlighted(treesitter), but may be slower.
				fix_enable = false, -- If true, when saving the current file, if the bookmark line number of the current file changes, try to fix it.

				virt_text = "🔖", -- Show virt text at the end of bookmarked lines
				border_style = "single", -- border style: "single", "double", "rounded"
				hl = {
					border = "TelescopeBorder", -- border highlight
					cursorline = "guibg=Gray guifg=White", -- cursorline highlight
				},
			})
			require("telescope").load_extension("bookmarks")
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup()
		end,
	},
	{
		"shellRaining/hlchunk.nvim",
		event = { "UIEnter" },
		config = function()
			require("hlchunk").setup({})
		end,
	},
})
