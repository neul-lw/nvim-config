function ColorMyPencils(color)
	color = color or "elflord" or "industry" or "koehler" or "torte"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	--vimvim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils("murphy")

vim.cmd(':hi Error ctermfg=Red guifg=Red')
