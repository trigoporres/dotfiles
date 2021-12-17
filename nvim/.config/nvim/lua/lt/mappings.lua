options = { noremap = true, silent = true }

-- Change require into import
vim.api.nvim_set_keymap('n', '<Leader>qf', "<cmd>_ciwimportf=dwdwifrom lx$hxj", options)

-- tex
vim.api.nvim_set_keymap('n', '<Leader>lp', ":!pdflatex %<cr>", options)

-- _ciwimportf=dwdwifrom lx$hxj
vim.api.nvim_set_keymap('n', '<Leader>rr', ':term cargo run<cr>i', options)

-- close a buffer
vim.api.nvim_set_keymap('n', '<Leader>gq', "<cmd>:BufDel<CR>", options)

--
-- vimrc
--

-- Edit vimrc configuration file
vim.cmd("nnoremap <Leader>e :e $MYVIMRC<CR>")
