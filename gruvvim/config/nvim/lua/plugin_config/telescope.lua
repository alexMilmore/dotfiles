--- config for vim telescope
--- https://github.com/nvim-telescope/telescope.nvim

-- nnoremap <leader>ff <cmd>Telescope find_files<CR>
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
-- nnoremap <leader>ftf :tabnew \| Telescope find_files<CR>
vim.api.nvim_set_keymap('n', '<leader>ftf', ':tabnew | Telescope find_files<CR>', { noremap = true })
-- nnoremap <leader>fg <cmd>Telescope live_grep<CR>
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
-- nnoremap <leader>fb <cmd>Telescope buffers<CR>
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true })
-- nnoremap <leader>fh <cmd>Telescope help_tags<CR>
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
