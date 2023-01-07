local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "neul.lsp.mason"
require("neul.lsp.handlers").setup()
require "neul.lsp.null-ls"
require("neul.lsp.settings.jedi-language-server")
