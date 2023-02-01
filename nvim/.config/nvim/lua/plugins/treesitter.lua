local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

ts_config.setup {
  ensure_installed = {
    "bash",
    "dockerfile",
    "go",
    "hcl",
    "json",
    "lua",
    "markdown",
    "ruby",
    "yaml" 
  },
  highlight = {
    enable = true,  -- Enable syntax highlighting for everything
  },
}
