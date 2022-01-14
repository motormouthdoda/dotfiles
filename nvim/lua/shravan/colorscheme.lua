local colorscheme = "onedark"

local status_ok, _ = pcall(require, colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require(colorscheme).setup {
    style = 'dark'
}
require(colorscheme).load()
