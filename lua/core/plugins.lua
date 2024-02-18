require("lazy").setup({

  -- theme
  "navarasu/onedark.nvim",

  -- left side dictionary tree
  "nvim-tree/nvim-tree.lua",

  -- icons
  "nvim-tree/nvim-web-devicons",

  -- bottom bar
  "nvim-lualine/lualine.nvim",

  -- code editor syntax
  "nvim-treesitter/nvim-treesitter",

  -- plugin manager, code language analys
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- dev plugins

  -- autofill
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",

   -- finder
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})
