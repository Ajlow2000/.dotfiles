--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", { desc = "Nop on space since I use it as leader"})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

vim.keymap.set("n", "Q", "<nop>", { desc = "'Worst place in the universe' -ThePrimeagen"})

vim.keymap.set("n", "<leader>/", ":nohlsearch<cr>", { desc = "Clear Search Highlighting" } )

vim.keymap.set("n", "<leader>rw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Start replacing all instances of word under cursor within file"} )

vim.keymap.set("n", "<leader>p", '"_dP', { desc = "Paste over visual selection without recoping the deleted selection" } )

vim.keymap.set( {"n", "v"}, "<leader>y", "\"+y", { desc = "Yank to system clipboard"} )
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank to system clipboard"} )

vim.keymap.set( {"n", "v"}, "<leader>d", '\"_d', { desc = "Delete to void register"} )

vim.keymap.set("n", "<leader>q", ":Bdelete<cr>", { desc = "[vim-bbye] - Close Buffer"} )

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down half page with cursor centered"} )
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up half page with cursor centered"} )

vim.keymap.set("n", "n", "nzzzv", { desc = "Jump to next search result with cursor centerd"} )
vim.keymap.set("n", "N", "Nzzzv", { desc = "Jump to previous search result with cursor centerd"} )

-- vim.keymap.set("n", "<C-h>", "<C-w>h",{ desc = "Cursor to left split" } )
-- vim.keymap.set("n", "<C-j>", "<C-w>j",{ desc = "Cursor to bottom split" } )
-- vim.keymap.set("n", "<C-k>", "<C-w>k",{ desc = "Cursor to top split" } )
-- vim.keymap.set("n", "<C-l>", "<C-w>l",{ desc = "Cursor to right split" } )

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>",{ desc = "Resize split vertically (larger)" } )
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>",{ desc = "Resize split vertically (smaller)" } )
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>",{ desc = "Resize split horizontally (smaller)" } )
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>",{ desc = "Resize split horizontally (larger)" } )

vim.keymap.set("n", "<S-l>", ":bnext<CR>",{ desc = "Cycle forwards through buffers" } )
vim.keymap.set("n", "<S-h>", ":bprevious<CR>",{ desc = "Cycle backwards through buffers" } )

vim.keymap.set("v", ">", ">gv",{ desc = "Increment Indentation of visual selection" } )
vim.keymap.set("v", "<", "<gv",{ desc = "Decrement Indentation of visual selection" } )

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down (with auto indent)"} )
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visual selection down (with auto indent)"} )

-- Terminal --
-- local term_opts = { silent = true }

-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

