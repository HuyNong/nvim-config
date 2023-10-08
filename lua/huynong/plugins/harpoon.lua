return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local ui = require("harpoon.ui")
    local mark = require("harpoon.mark")

    keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    keymap.set("n", "<leader>ha", mark.add_file, { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>hr", mark.rm_file, { desc = "Remove file in harpoon" })
    keymap.set("n", "<leader>hn", ui.nav_next, { desc = "Go to next harpoon mark" })
    keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Go to prev harpoon mark" })
  end,
}
