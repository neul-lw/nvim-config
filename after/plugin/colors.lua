vim.o.termguicolors = true

require("onedarkpro").setup({
  colors = {
    cyan = '#e5c10b',
    blue = '#8e3737',
    green = '#eaa580',
  }
})


function ColorMyPencils(color)
	color = color or "rose-pine" or "terafox" or  "catppuccin-mocha" or "elflord" or "industry" or "koehler"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

local Colorscheme = 'onedark_dark'
ColorMyPencils(Colorscheme)

vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=#000000
    augroup END
]])

---- Nvim tree  
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=#000000 guifg=#ffffff")
