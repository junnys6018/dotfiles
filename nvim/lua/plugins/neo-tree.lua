-- TODO: format this
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
    keys = {
        { '\\', ':Neotree filesystem toggle left<CR>', desc = 'Toggle NeoTree', silent = true }
    },
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
        filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        }
        }
  },
}
