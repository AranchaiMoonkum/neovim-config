local opts = { silent = true, noremap = true }

-- pressing "jk" in insert mode to escape quickly
vim.keymap.set("i", "jk", "<ESC>", opts)

-- telescope
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)

-- explorer
vim.keymap.set("n", "<leader>e", "<CMD>Neotree<CR>", opts)
