function global_keymap(mode, binding, cmd, desc)
    local opts = { noremap = true, silent = true, desc = "<uninitialized>"}
    if desc then
        opts.desc = desc
    end
    vim.keymap.set(mode, binding, cmd, opts)
end

require "user.impatient"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.indentline"
-- require "user.alpha"
require "user.autocommands"
require "user.todocomments"
require("leap").add_default_mappings()
