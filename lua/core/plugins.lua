require("lazy").setup({

  -- Theme inspired by Atom
  "navarasu/onedark.nvim",

  -- left side dictionary tree
  "nvim-tree/nvim-tree.lua",

  -- icons
  "nvim-tree/nvim-web-devicons",

  -- bottom bar
  "nvim-lualine/lualine.nvim",

  -- code editor syntax
  "nvim-treesitter/nvim-treesitter",

   -- Git related plugins
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  "lewis6991/gitsigns.nvim",

  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- fill tags
  "tpope/vim-surround",

  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  {
    -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { "j-hui/fidget.nvim", tag = "legacy", opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      "folke/neodev.nvim",
    },
  },

  {
    -- Autocompletion
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Adds LSP completion capabilities
      "hrsh7th/cmp-nvim-lsp",

      -- Adds a number of user-friendly snippets
      "rafamadriz/friendly-snippets",
    },
  },

   -- finder
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})
