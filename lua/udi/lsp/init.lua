local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "udi.lsp.lsp-installer"
require("udi.lsp.handlers").setup()
require "udi.lsp.null-ls"
