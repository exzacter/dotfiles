return {
  {
    "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "Vault",
            path = "/home/data/Obsidian/Vault/",
          },
          {
            name = "uni",
            path = "/home/data/Obsidian/uni/",
          },
          {
            name = "blog",
            path = "/home/data/Obsidian/blog/",
          }
        },
        notes_subdir = "inbox",
        new_notes_location = "notes_subdir",

        mappings = {
          ["gf"] = {
            action = function()
              return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
          }
        }
      })
    end
  }
}
