vim.opt.termguicolors = true

function SetColor(color)
	color = color or "tokyonight-storm"
	vim.cmd.colorscheme(color)
end

SetColor()
