return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	keys = { { "n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" } } },
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
