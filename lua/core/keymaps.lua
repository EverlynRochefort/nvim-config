-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Increment and Decrement
-- vim.keymap.set("n", "+", "<C-a>")
-- vim.keymap.set("n", "-", "<C-s>")

