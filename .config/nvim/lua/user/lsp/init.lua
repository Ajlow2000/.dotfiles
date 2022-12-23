local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

-- Keybinds TODO - code actions and codelens action
        -- a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        -- l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        -- q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
vim.keymap.set("n", "<leader>l", ":LspInfo<cr>", { desc = "[LSP] - LspInfo"} )
vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format{async=true}<cr>", { desc = "[LSP] - Format with LSP"} )
vim.keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", { desc = "[LSP] - Rename with LSP"} )
vim.keymap.set("n", "<leader>ln", ":lua vim.lsp.diagnostic.goto_next()<cr>", { desc = "[LSP] - Go To Next Diagnostic"} )
vim.keymap.set("n", "<leader>lp", ":lua vim.lsp.diagnostic.goto_prev()<cr>", { desc = "[LSP] - Go To Previous Diagnostic"} )

-- vim.keymap.set("n", "<leader>l", "", { desc = "[LSP] - "} )
