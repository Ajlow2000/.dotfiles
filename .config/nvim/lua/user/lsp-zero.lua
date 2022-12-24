local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
    return
end

-- Keymaps
vim.keymap.set("n", "<leader>i", ":lua vim.lsp.buf.hover()<cr>", { desc = "[LSP] - Show Popup Info"} )

vim.keymap.set("n", "<leader>l", ":LspInfo<cr>", { desc = "[LSP] - LspInfo" } )
vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format{async=true}<cr>", { desc = "[LSP] - Format with LSP"} )
vim.keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", { desc = "[LSP] - Rename with LSP"} )
vim.keymap.set("n", "<leader>ln", ":lua vim.lsp.diagnostic.goto_next()<cr>", { desc = "[LSP] - Go To Next Diagnostic"} )
vim.keymap.set("n", "<leader>lp", ":lua vim.lsp.diagnostic.goto_prev()<cr>", { desc = "[LSP] - Go To Previous Diagnostic"} )

lsp.preset('recommended')
lsp.ensure_installed({
    'rust_analyzer',
    'taplo',
    'pyright',
    'clangd',
    'texlab',
    'sumneko_lua',
})
lsp.nvim_workspace()
lsp.setup()
