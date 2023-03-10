local set = vim.keymap.set
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, {})
set('n', '<C-p>', builtin.git_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
