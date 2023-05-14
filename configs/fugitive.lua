local keymap = vim.keymap

keymap.set("n", "<leader>gs", "<cmd>Git<cr>", { desc = "git status" })
keymap.set("n", "<leader>gw", "<cmd>Gwrite<cr>", { desc = "git add" })
keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "git commit" })
keymap.set("n", "<leader>gd", "<cmd>Gitdiffsplit<cr>", { desc = "git diff" })
keymap.set("n", "<leader>gpl", "<cmd>Git pull<cr>", { desc = "git pull" })
keymap.set("n", "<leader>gpu", "<cmd>15 split|term git push<cr>", { desc = "git push" })

