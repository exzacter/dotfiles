local builtin = require('telescope.builtin')
-- telescope
vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })

-- neotree 
vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal left<CR>", { desc = "open netrw file tree" })
vim.keymap.set("n", "<leader>c", ":Neotree toggle<CR>", { desc = "Close NeoTree" })
