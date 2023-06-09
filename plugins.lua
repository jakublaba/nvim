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
        "jdtls",
        "pyright"
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
    -- completion engine
    -- https://github.com/hrsh7th/nvim-cmp
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require("plugins.configs.cmp")
      table.insert(M.sources, { name = "crates" })
      return M
    end
  },
  {
    -- nvim dap
    -- https://github.com/mfussenegger/nvim-dap
    "mfussenegger/nvim-dap",
  },
  {
    -- java plugin
    -- https://github.com/mfussenegger/nvim-jdtls
    "mfussenegger/nvim-jdtls",
    config = function ()
      require("custom.configs.jdtls")
    end
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
  {
    -- crates versions
    -- https://github.com/Saecki/crates.nvim
    "saecki/crates.nvim",
    dependencies = "hrsh7th/nvim-cmp",
    ft = { "rust", "toml" },
    config = function (_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end
  },
  {
    -- git integration
    -- https://github.com/tpope/vim-fugitive
    "tpope/vim-fugitive",
    event = "User InGitRepo",
    config = function ()
      require("custom.configs.fugitive")
    end
  },
  {
    -- python pep8 style indents
    -- https://github.com/Vimjas/vim-python-pep8-indent
    "Vimjas/vim-python-pep8-indent",
    ft = { "python" }
  },
  {
    -- markdown plugin
    -- https://github.com/preservim/vim-markdown
    "preservim/vim-markdown",
    ft = { "markdown" }
  },
}

return plugins
