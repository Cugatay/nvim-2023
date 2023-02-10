local autotag = require('nvim-ts-autotag')

autotag.setup({
  filetypes = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
    'xml',
    'php',
    'markdown',
    'glimmer', 'handlebars', 'hbs', 'astro'
  },
})
