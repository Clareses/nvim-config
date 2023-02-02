-- map leader
vim.g.mapleader = " "

-- map('mode', 'key', 'value', {flags})
-- mode could be n, i, v, c
-- flags: noremap, silent...

local map = vim.api.nvim_set_keymap

-- direction control
map('n', 'j', 'h', { noremap = true, silent = true, nowait = true})
map('n', 'l', 'l', { noremap = true, silent = true, nowait = true})
map('n', 'k', 'j', { noremap = true, silent = true, nowait = true})
map('n', 'i', 'k', { noremap = true, silent = true, nowait = true})
map('n', 'J', 'b', { noremap = true, silent = true, nowait = true})
map('n', 'L', 'w', { noremap = true, silent = true, nowait = true})
map('n', 'I', '5k',{ noremap = true, silent = true, nowait = true})
map('n', 'K', '5j',{ noremap = true, silent = true, nowait = true})
map('v', 'j', 'h', { noremap = true, silent = true, nowait = true})
map('v', 'l', 'l', { noremap = true, silent = true, nowait = true})
map('v', 'k', 'j', { noremap = true, silent = true, nowait = true})
map('v', 'i', 'k', { noremap = true, silent = true, nowait = true})
map('v', 'J', 'b', { noremap = true, silent = true, nowait = true})
map('v', 'L', 'w', { noremap = true, silent = true, nowait = true})
map('v', 'I', '5k',{ noremap = true, silent = true, nowait = true})
map('v', 'K', '5j',{ noremap = true, silent = true, nowait = true})

-- jump to match pair
vim.cmd([[
   exec "map <LEADER>p %"
]])


-- screen split
map('n', 'sj', ':set nosplitright<CR>:vsp<CR>', { noremap = true, silent = true })
map('n', 'sl', ':set splitright<CR>:vsp<CR>', { noremap = true, silent = true })
map('n', 'si', ':set nosplitbelow<CR>:sp<CR>', { noremap = true, silent = true })
map('n', 'sk', ':set splitbelow<CR>:sp<CR>', { noremap = true, silent = true })

-- move between screens
map('', '<LEADER>i', '<C-w>k', {silent = true, noremap = true})
map('', '<LEADER>k', '<C-w>j', {silent = true, noremap = true})
map('', '<LEADER>j', '<C-w>h', {silent = true, noremap = true})
map('', '<LEADER>l', '<C-w>l', {silent = true, noremap = true})

-- resize the screen
map('', '<up>', ':resize +1<CR>', {silent = true})
map('', '<down>', ':resize -1<CR>', {silent = true})
map('', '<left>', ':vertical resize+1<CR>', {silent = true})
map('', '<right>', ':vertical resize-1<CR>', {silent = true})

-- tabs control
map('', 'tu', ':tabe<CR>', {})
map('', 'tn', ':+tabnext<CR>', {})
map('', 'ti', ':-tabnext<CR>', {})

-- insert Mappings
map('n', 'a', 'i', {noremap = true})
map('n', 'h', 'a', {noremap = true})
map('n', 'A', 'I', {noremap = true})
map('n', 'H', 'A', {noremap = true})

-- quick save and quick quit
map('', 's', '<NOP>', {})
map('', 'S', ':w<CR>', {})
map('', 'Q', ':q<CR>', {})
map('', 'R', ':source $MYVIMRC<CR>', {})

-- search leap
map('n', '=', 'nzz', { noremap = true })
map('n', '-', 'Nzz', { noremap = true })
map('n', '<LEADER><CR>', ':noh<CR>', { noremap = true })

-- buffer switch
map('n', '<C-w>', ':bd<CR>', {noremap = true})
map('n', '<C-n>', ':bn<CR>', {noremap = true})
map('n', '<C-p>', ':bp<CR>', {noremap = true})
