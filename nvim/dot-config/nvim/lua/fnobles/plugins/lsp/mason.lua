return {
  {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "eslint",
        "jsonls",
        "html",
        "cssls",
        "tailwindcss",
        "graphql",
        "emmet_ls",
      },
      automatic_enable = true,
    })
  end

  }
}
