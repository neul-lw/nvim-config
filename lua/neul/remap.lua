local set = vim.keymap.set

vim.g.mapleader = " "
set("n", "<leader>pp", vim.cmd.Ex)
set("i", "jj", "<C-c>")
set("n", '<leader>w', vim.cmd.w)
set("n", '<leader>q', vim.cmd.q)
set("n", '<leader>so', vim.cmd.so)


-- Nvim-tree keymaps 
set("n", "<leader>e", vim.cmd.NvimTreeToggle)
set("n", "<leader>h", "<C-w>h")
set("n", "<leader>l", "<C-w>l")
set("n", "<leader>j", "<C-w>j")
set("n", "<leader>k", "<C-w>k")

-- Resize with arrows
set("n", "<C-Up>", ":resize -2<CR>")
set("n", "<C-Down>", ":resize +2<CR>")
set("n", "<C-Left>", ":vertical resize +2<CR>")
set("n", "<C-Right>", ":vertical resize -2<CR>")

-- Navigate buffers
set("n", "<S-l>", ":bnext<CR>")
set("n", "<S-h>", ":bprevious<CR>")


-- Move text up and down
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
set("v", "<leader>p.", '"_dP')

-- Visual --
-- Stay in indent mode
set("v", "<", "<gv")
set("v", ">", ">gv")

-- Half Page Jump
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- Yank to clipboard 
set({"n", "v"}, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])

-- Fast project changing 
set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Change current all 
set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make it execuatable
set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Run a python file 
set("n", "<leader>;p", "<cmd>term python3 %<CR>")

-- Code runner 
set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- Fugutive
set('n', '<leader>gs', vim.cmd.Git)

-- Harpoon 
-- set("n", "<leader>a", mark.add_file)
-- set("n", "<C-e>", ui.toggle_quick_menu)
-- 
-- set("n", "<C-h>", function() ui.nav_file(1) end)
-- set("n", "<C-t>", function() ui.nav_file(2) end)
-- set("n", "<C-n>", function() ui.nav_file(3) end)
-- set("n", "<C-s>", function() ui.nav_file(4) end)
-- 
-- Treesitter 
--          init_selection = '<C-space>',
--          node_incremental = '<C-space>',
--          scope_incremental = '<C-s>',
--          node_decremental = '<C-backspace>',
--
-- Telescope
-- set('n', '<leader>ff', builtin.find_files, {})
-- set('n', '<C-p>', builtin.git_files, {})
-- set('n', '<leader>fg', builtin.live_grep, {})
-- set('n', '<leader>fb', builtin.buffers, {})
-- set('n', '<leader>fh', builtin.help_tags, {})
-- set('n', '<leader>ps', function()
--builtin.grep_string({ search = vim.fn.input("Grep > ") })


-- Lsp 
local opts = { noremap = true, silent = true }
set("n", "gd", vim.lsp.buf.definition, opts)
set("n", "K", vim.lsp.buf.hover, opts)
set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
set("n", "<leader>vd", vim.diagnostic.open_float, opts)
set("n", "[d", vim.diagnostic.goto_next, opts)
set("n", "]d", vim.diagnostic.goto_prev, opts)
set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
set("n", "<leader>vrr", vim.lsp.buf.references, opts)
set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
set("i", "<C-k>", vim.lsp.buf.signature_help, opts)

-- Undotree 
set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Quickfix should learn about it first
--set("n", "<C-k>", "<cmd>cnext<CR>zz")
--set("n", "<C-j>", "<cmd>cprev<CR>zz")
--set("n", "<leader>k", "<cmd>lnext<CR>zz")
--set("n", "<leader>j", "<cmd>lprev<CR>zz")
