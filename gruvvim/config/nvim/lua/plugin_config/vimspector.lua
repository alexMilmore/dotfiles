-- vimspector configuration
-- https://github.com/puremourning/vimspector.git

-- launch vimspector
vim.api.nvim_set_keymap('n', '<leader>ds', ':call vimspector#Launch()<CR>', { noremap = true })

-- go to code window
vim.api.nvim_set_keymap('n', '<leader>dc', ':call GotoWindow(g:vimspector_session_windows.code)<CR>', { noremap = true })

-- go to variable window
vim.api.nvim_set_keymap('n', '<leader>dv', ':call GotoWindow(g:vimspector_session_windows.variables)<CR>', { noremap = true })

-- go to watches window
vim.api.nvim_set_keymap('n', '<leader>dw', ':call GotoWindow(g:vimspector_session_windows.watches)<CR>', { noremap = true })

-- go to stack trace window
vim.api.nvim_set_keymap('n', '<leader>ds', ':call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>', { noremap = true })

-- go to output window
vim.api.nvim_set_keymap('n', '<leader>do', ':call GotoWindow(g:vimspector_session_windows.output)<CR>', { noremap = true })

-- add to watch
vim.api.nvim_set_keymap('n', '<leader>di', ':call AddToWatch()<CR>', { noremap = true })

-- reset vimspector
vim.api.nvim_set_keymap('n', '<leader>dx', ':call vimspector#Reset()<CR>', { noremap = true })

-- clear breakpoints
vim.api.nvim_set_keymap('n', '<leader>dX', ':call vimspector#ClearBreakpoints()<CR>', { noremap = true })

-- step out (go to next breakpoint)
vim.api.nvim_set_keymap('n', '<S-l>', ':call vimspector#StepOut()<CR>', { noremap = true })

-- step into ()
vim.api.nvim_set_keymap('n', '<S-k>', ':call vimspector#StepInto()<CR>', { noremap = true })

-- step over ()
vim.api.nvim_set_keymap('n', '<S-j>', ':call vimspector#StepOver()<CR>', { noremap = true })

-- restart vimspector debugging
vim.api.nvim_set_keymap('n', '<leader>d_', ':call vimspector#Restart()<CR>', { noremap = true })

-- continue vimspector
vim.api.nvim_set_keymap('n', '<leader>dn', ':call vimspector#Continue()<CR>', { noremap = true })

-- run code to cursor
vim.api.nvim_set_keymap('n', '<leader>drc', ':call vimspector#RunToCursor()<CR>', { noremap = true })

-- toggle breakpoint
vim.api.nvim_set_keymap('n', '<leader>db', ':call vimspector#ToggleBreakpoint()<CR>', { noremap = true })

-- toggle conditional breakpoint
vim.api.nvim_set_keymap('n', '<leader>dcb', ':call vimspector#ToggleConditionalBreakpoint()<CR>', { noremap = true })
