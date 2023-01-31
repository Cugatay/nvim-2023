local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  ensure_installed = { "lua", "vim", "help", "javascript", "typescript", "rust", "go", "markdown" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

  autotag = {
    enable = true,
  }
}
