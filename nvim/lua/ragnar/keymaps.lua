vim.keymap.set("n", "\\", ":Ex<CR>", { desc = "Open file explorer", noremap = true, silent = true })

-- as per desc, J to move line down and K for up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move lines down in visual selection"})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", {desc = "move lines up in visual selection"})

-- saerch forward (n) and back (N) through highlighted words
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move line forward (>) and back (<)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- cancel out of highlighting mode in search
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

-- highlight the yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,

vim.keymap.set("n", "<C-e>", ":Ex<CR>", {desc = "Open file explorer", silent = true })
})
