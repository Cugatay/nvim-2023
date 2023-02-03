-- TODO: Buffer Source

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<C-n>", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "[n", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.rename() end, opts)
  -- To enter opened error
  -- map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

-- lspconfig.tailwindcss.setup({
--   settings = {
--     tailwindCSS = {
--       experimental = {
--         classRegex = {
--           "cva\\(([^)]*)\\)",
--           "[\"'`]([^\"'`]*).*?[\"'`]",
--         },
--       },
--     },
--   },
-- })
