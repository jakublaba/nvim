local plugins = {
  {
    -- lsp configuration
    -- https://github.com/neovim/nvim-lspconfig
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    -- mason package manager
    -- https://github.com/williamboman/mason.nvim
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
      }
    }
  },
  {
    -- treesitter (syntax highlighting)
    -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "java",
        "c",
        "rust",
        "python",
        "typescript",
        "bash"
      }
    }
  },
  {
    -- nvim dap
    -- https://github.com/mfussenegger/nvim-dap
    "mfussenegger/nvim-dap",
  },
  {
    -- multi cursor
    -- https://github.com/mg979/vim-visual-multi
    "mg979/vim-visual-multi"
  },
  {
    -- rust plugin
    -- https://github.com/rust-lang/rust.vim
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    -- rust tools (used for debugging)
    -- https://github.com/simrat39/rust-tools.nvim
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require("custom.configs.rust-tools")
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  },
}

return plugins
