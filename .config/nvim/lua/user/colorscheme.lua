local default_colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. default_colorscheme)
if not status_ok then
  return
end
