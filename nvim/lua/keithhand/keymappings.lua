-- tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quick exit insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- adds ability to move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- changes cursor position after J shorcut
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor placed when moving...
-- ... while moving up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- ... while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- find and replace
vim.keymap.set(
	"n",
	"<leader>f",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "[F]ind and replace word" }
)
