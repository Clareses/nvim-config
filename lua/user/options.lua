local o = vim.o
local wo = vim.wo
local bo = vim.bo

local opt = vim.opt

-- buffer options
vim.cmd([[
    syntax on
    filetype on                   
    filetype indent on           
    filetype plugin on          
    set mouse=a 
    set encoding=utf-8
    let &t_ut=''
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
]])

-- window options
wo.number = true
wo.relativenumber = true
wo.cursorline = true
wo.cursorlineopt = 'both'
wo.wrap = true
wo.foldmethod = 'indent'
wo.foldlevel = 99

-- global options
o.showcmd = true
o.wildmenu = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true
o.mouse = 'a'
o.scrolloff = 5
o.autochdir = true

