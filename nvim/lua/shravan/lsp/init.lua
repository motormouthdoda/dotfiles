local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("shravan.lsp.lsp-installer")
require("shravan.lsp.handlers").setup()
require("shravan.lsp.null-ls")
