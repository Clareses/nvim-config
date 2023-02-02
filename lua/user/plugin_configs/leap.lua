require('leap').add_default_mappings()
require('leap').opts.highlight_unabeled_phase_one_targets=true
require('leap').opts.safe_labels = {}
vim.keymap.set({'x', 'o', 'n'}, 'f', '<Plug>(leap-forward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'F', '<Plug>(leap-backward-to)')
