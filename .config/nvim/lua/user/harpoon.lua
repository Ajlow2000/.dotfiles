local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

    -- h = {
    --     name = "Harpoon",
    --     ["<space>"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle harpoon menu" },
    --     a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file to harpoon" },
    --     ["1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Navigate to file 1" },
    --     ["2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Navigate to file 2" },
    --     ["3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Navigate to file 3" },
    --     ["4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Navigate to file 4" },
    --     ["5"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to file 5" },
    --     ["6"] = { "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", "Navigate to file 6" },
    --     ["7"] = { "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", "Navigate to file 7" },
    --     ["8"] = { "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", "Navigate to file 8" },
    --     ["9"] = { "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", "Navigate to file 9" },
    --     ["0"] = { "<cmd>lua require('harpoon.ui').nav_file(0)<cr>", "Navigate to file 10" },
    -- },
vim.keymap.set("n", "<leader>h", "lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "[Harpoon] - Toggle Harpoon Menu" })
vim.keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<cr>", { desc = "[Harpoon] - Add file to harpoon" })
vim.keymap.set("n", "<C-l>", ":lua require('harpoon.ui').nav_next()<cr>", { desc="[Harpoon] - Navigate to next Harpoon file"})
vim.keymap.set("n", "<C-h>", ":lua require('harpoon.ui').nav_prev()<cr>", { desc = "[Harpoon] - Navigate to previous Harpoon file"})
