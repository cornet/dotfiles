local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

ts_config.setup {
  ensure_installed = { },
  auto_install = true,-- Install all "maintained" parsers
  highlight = {
    enable = true,  -- Enable syntax highlighting for everything
  },
}
