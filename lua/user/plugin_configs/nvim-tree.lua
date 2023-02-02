-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
 vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "b", action = "dir_up" },
                { key = "c", action = "cd"},
                { key = "d", action = "remove"}
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    }
})

-- set mappings
local map = vim.api.nvim_set_keymap

map('n', 'tt', ':NvimTreeToggle<CR>', {silent = true})
