local set = vim.opt

set.guicursor = ""
set.nu = true
set.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.wrap = false

set.swapfile = false
set.backup = false

set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = true
set.incsearch = true
set.termguicolors = true
set.scrolloff = 8

set.signcolumn = "yes"
set.foldcolumn = "0"
set.colorcolumn = "80"
vim.cmd("set fillchars+=vert:\\ ")
set.cc =

set.isfname:append("@-@")
set.updatetime = 50

set.splitright = true
set.splitbelow = true
