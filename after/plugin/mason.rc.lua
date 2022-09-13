local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = { "typescript-language-server", "sumneko_lua", "tailwindcss", "prisma_language_server", "rust_analyzer", "css_lsp", "cssmodules_lsp" },
}

