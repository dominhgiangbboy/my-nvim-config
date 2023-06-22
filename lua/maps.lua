local keymap = vim.keymap


-- Select all --
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab --
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })


-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<ledft>', '<c-w>h')
keymap.set('', 's<up>', '<c-w>k')
keymap.set('', 's<down>', '<c-w>j')
keymap.set('', 's<right>', '<c-w>l')
keymap.set('', 'sh', '<c-w>h')
keymap.set('', 'sk', '<c-w>k')
keymap.set('', 'sj', '<c-w>j')
keymap.set('', 'sl', '<c-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')

-- Set leader key to space
vim.g.mapleader = "<Space>"

-- Telescope
local builtin = require('telescope.builtin')
local telescopeExtensions = require('telescope').extensions
local flutterTelescope = telescopeExtensions.flutter

vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<Space>fr', builtin.grep_string, {})
vim.keymap.set('n', '<Space>fl', flutterTelescope.commands, {})
vim.keymap.set('n', '<Space>fm', flutterTelescope.fvm, {})

-- Set LSP map
vim.keymap.set('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { silent = true })
vim.keymap.set('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { silent = true })
vim.keymap.set('n', 'C', ':lua vim.lsp.buf.code_action()<CR>', { silent = true })
-- Set explorer command shortcut
vim.keymap.set('n', '<Space>fe', ':NvimTreeToggle<CR>', { silent = true })

-- Github copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
