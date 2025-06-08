return {
	"nvim-telescope/telescope.nvim",
	dependancies = {
		"plenary"
	},

	config = function()
		require("telescope").setup({})
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })
		vim.keymap.set("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.input("Grep search > ")})
		end)
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
	end
}
