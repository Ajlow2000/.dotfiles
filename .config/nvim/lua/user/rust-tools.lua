local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
    return
end

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      -- vim.keymap.set("n", "<leader>w", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "[Rust-Tools] - Hover actions" })
      -- Code action groups
      -- vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr, desc = "[Rust-Tools] - Code Action Groups" })
    end,
  },
})
