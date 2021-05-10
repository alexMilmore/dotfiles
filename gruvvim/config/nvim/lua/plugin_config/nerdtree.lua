-- NERDTree
-- https://github.com/mfussenegger/nvim-lint.git

-- open nerdtree
vim.api.nvim_set_keymap('n', '<leader>nn', ':NERDTree<CR>', { noremap = true })
-- nerdtree git
vim.api.nvim_set_keymap('n', '<leader>ng', ':NERDTreeVCS<CR>', { noremap = true })
-- toggle nerdtree
vim.api.nvim_set_keymap('n', '<leader>nt', ':NERDTreeToggle<CR>', { noremap = true })
