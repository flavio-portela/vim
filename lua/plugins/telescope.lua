return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
			vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
			vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
			vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
			vim.keymap.set("n", "<leader>gc", telescope.git_commits, {})

			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						"./node_modules/*",
						"./venv/*",
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
