local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
    return
end

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            rt.inlay_hints.set()

            vim.keymap.set("n", "<leader>ri", rt.inlay_hints.toggle, { buffer = bufnr, desc = "[Rust-Tools] - Toggle Inlay Hints" })

            -- vim.keymap.set("n", "rh", rt. , { buffer = bufnr, desc = "[Rust-Tools] - Hover actions" })
            -- vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr, desc = "[Rust-Tools] - Code Action Groups" })
        end,
    },
})
