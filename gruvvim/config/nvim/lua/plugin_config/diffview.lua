-- vim diffview
-- https://github.com/sindrets/diffview.nvim

vim.api.nvim_set_keymap('n', '<leader>gdo', ':DiffviewOpen ', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gdx', ':DiffviewClose<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gdf', ':DiffviewToggleFiles<CR>', { noremap = true })

