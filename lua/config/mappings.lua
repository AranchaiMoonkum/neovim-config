local opts = { silent = true, noremap = true }

-- pressing "jk" in insert mode to escape quickly
vim.keymap.set("i", "jk", "<ESC>", opts)
