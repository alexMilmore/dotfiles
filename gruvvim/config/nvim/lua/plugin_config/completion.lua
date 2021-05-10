-- autocompletion
-- https://github.com/nvim-lua/completion-nvim

vim.cmd[[set completeopt=menuone,noinsert,noselect]]
-- vim.cmd[[let g:completeion_matching_strategy_list = ['exact', 'substring', 'fuzzy'] ]]

-- map completeion key to tab
vim.cmd[[imap <tab> <Plug>(completion_smart_tab)]]
vim.cmd[[imap <s-tab> <Plug>(completion_smart_s_tab)]]

