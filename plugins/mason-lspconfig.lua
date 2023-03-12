return {
  { "williamboman/mason.nvim" },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "sqlls",
        "yamlls",
        "taplo",
        "jsonls",
        "sumneko_lua",
        "bashls",
        "dockerls",
        "marksman",
        "bufls",
      },
      automatic_installation = true,
    }
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "golangci_lint",
        "hadolint",
        "fixjson",
        "luacheck",
        "markdownlint",
        "buf",
        "shellcheck",
        "shfmt",
        "yamlfmt",
        "yamllint",
        "taplo",
        "sqlfluff",
        "sql_formatter",
      },
      automatic_installation = true,
      automatic_setup = true,
    }
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opt = {
      ensure_installed = { "delve" },
      automatic_isntallation = true,
      automatic_setup = true,
    }
  }
}
