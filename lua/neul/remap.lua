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
set("n", "<C f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Change current all 
set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make it execuatable
set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
