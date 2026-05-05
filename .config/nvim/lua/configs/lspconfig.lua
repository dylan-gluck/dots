require("nvchad.configs.lspconfig").defaults()

local servers =
  { "html", "cssls", "ts_ls", "prettier", "es_lint", "cssmodules_ls", "gleam", "htmx", "prismals", "lua_ls" }
vim.lsp.enable(servers)

local python = { "ruff", "pyright" }
vim.lsp.enable(python)

local golang = { "gopls" }
vim.lsp.enable(golang)

vim.lsp.config("*", {
  root_markers = { ".git" },
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
