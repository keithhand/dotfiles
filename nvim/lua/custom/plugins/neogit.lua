return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"sindrets/diffview.nvim", -- optional - Diff integration
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup()
		vim.keymap.set("n", "<leader>g", neogit.open, { desc = "Open Neo[g]it" })
	end,
}
