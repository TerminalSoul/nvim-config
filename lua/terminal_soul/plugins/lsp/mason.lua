return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "pyright",      -- Python LSP
        "lua_ls",       -- Lua (useful for Neovim config)
        "bashls",       -- Bash support (optional, handy for scripting)
        "jsonls",       -- JSON files (common in configs)
        "yamlls",       -- YAML files (e.g., GitHub Actions, Docker)
        "marksman",     -- Markdown LSP (optional)
      },
    })
  end,
}
