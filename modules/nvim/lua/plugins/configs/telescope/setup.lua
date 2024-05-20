require("telescope").setup({
	pickers = {
		find_files = {
			find_command = { "fd", "--strip-cwd-prefix", "--exclude", ".git" },
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown(),
		},
	},
})

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")