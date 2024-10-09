
local g = vim.g
local o = vim.o

g.mapleader = ' '
g.maplocalleader = ' '

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smarttab = true
o.autoindent = true

o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true

o.wildmode = 'longest'
o.list = true
o.showcmd = true
o.showmode = true

--o.encoding = 'uft-8'
o.textwidth = 0

o.hidden = true
o.number = true
o.relativenumber = true
o.title = true

o.clipboard = 'unnamedplus'

vim.cmd([[autocmd FileType * set formatoptions-=ro]])
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
