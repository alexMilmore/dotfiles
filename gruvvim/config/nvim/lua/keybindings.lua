


-- set mapleader
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true })

-- basics
-- mapleader
vim.g.mapleader = " "
-- write
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })
-- write & quit
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true })

-- open terminal in new tab
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnew<CR>:terminal<CR>', { noremap = true })
-- open terminal in new split
vim.api.nvim_set_keymap('n', '<leader>t/', ':vsp<CR><C-W>l:terminal<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>t.', ':sp<CR><C-W>j:terminal<CR>', { noremap = true })
-- escape terminal
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- tabs
vim.api.nvim_set_keymap('n', '<M-u>', ':tabprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-i>', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew ', { noremap = true })
-- buffers
vim.api.nvim_set_keymap('n', '<M-U>', '<C-o>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-I>', '<C-i>', { noremap = true })

---# vim split
-- navigation
vim.api.nvim_set_keymap('n', '<M-h>', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-j>', '<C-W>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', '<C-W>l', { noremap = true })
-- open split windows
vim.api.nvim_set_keymap('n', '<M-/>', '<C-W>v', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-.>', '<C-W>s', { noremap = true })

-- resize TODO this is still kinda annoying
vim.api.nvim_set_keymap('n', '<M-H>', '<C-W>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-J>', '<C-W>-', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-K>', '<C-W>+', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-L>', '<C-W><', { noremap = true })
-- open file into terminal
vim.api.nvim_set_keymap('n', '<leader>o-', '<C-W>f', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o/', '<C-W>vgf', { noremap = true })

-- cargo
vim.api.nvim_set_keymap('n', '<leader>cc', ':!cargo check<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>cr', ':!cargo run<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ct', ':!cargo test<CR>', { noremap = true })
