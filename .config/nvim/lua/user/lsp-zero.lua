local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
    return
end

-- Keymaps
global_keymap("n", "<leader>i", ":lua vim.lsp.buf.hover()<cr>", "[LSP] - Show Popup Info" )

global_keymap("n", "<leader>l", ":LspInfo<cr>", "[LSP] - LspInfo" )
global_keymap("n", "<leader>lf", ":lua vim.lsp.buf.format{async=true}<cr>", "[LSP] - Format with LSP" )
global_keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", "[LSP] - Rename with LSP" )
global_keymap("n", "<leader>ln", ":lua vim.lsp.diagnostic.goto_next()<cr>", "[LSP] - Go To Next Diagnostic" )
global_keymap("n", "<leader>lp", ":lua vim.lsp.diagnostic.goto_prev()<cr>", "[LSP] - Go To Previous Diagnostic" )

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
