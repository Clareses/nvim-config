require('user/plugin_configs/leap')
require('user/plugin_configs/coc-nvim')
require('user/plugin_configs/treesitter')
require('user/plugin_configs/tokyo-theme')
require('user/plugin_configs/nvim-tree')
require('user/plugin_configs/nvim-lualine')
require('user/plugin_configs/nvim-tabline')
require('better-comment').Setup()

vim.cmd([[
    exec "hi CocMenuSel ctermbg=237 guibg=#13354A"
    exec "lua require('leap').init_highlight(true)"
    exec "colorscheme ayu-mirage"
    autocmd VimEnter * unmap is
    autocmd VimEnter * unmap ib
    autocmd VimEnter * map <LEADER>p %
    tnoremap <esc> <c-\><c-n>
]])

