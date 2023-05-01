local status, blankline = pcall(require, 'indent_blankline')
if (not status) then return end

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#fb8500 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ffb703 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#023047 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#g219eb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#8ecae6 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=# gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

blankline.setup({
	show_current_context = true,
  show_current_context_start = false,
	space_char_blankline = " ",
  char_highlight_list = {
  	"IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
 --   "IndentBlanklineIndent6",
  },
})
