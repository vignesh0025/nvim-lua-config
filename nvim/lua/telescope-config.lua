local setup = function()
	vim.api.nvim_set_keymap('n', '<c-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
	--vim.api.nvim_set_keymap('i', '<esc>', '<c-c>', { nmap = true, silent = true })
end

return setup
