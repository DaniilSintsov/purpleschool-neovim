local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find File" },
		b = { "Find Buffer" },
		h = { "Find Help" },
		w = { "Find Text" },
	},
	e = { "File Manager" },
	x = { "Close Buffer" },
	w = { "Save" },
	t = { "Terminal" },
	h = { "No highlight" },
	g = { name = "Git", b = "Branches", c = "Commits", s = "Status" },
	c = { name = "Comment", l = "Comment Line" },
	l = {
		name = "LSP",
		d = "Diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "Rename",
		a = "Action",
		s = "Symbol",
	},
}, { prefix = "<leader>" })
