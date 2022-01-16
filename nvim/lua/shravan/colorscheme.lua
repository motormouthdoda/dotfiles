local colorscheme = "gruvbox-material"

pcall(vim.cmd, "let g:gruvbox_material_background = 'hard'")

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
