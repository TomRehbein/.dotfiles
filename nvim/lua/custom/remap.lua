vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Ctrl+Backspace delete word
vim.keymap.set('i', '<C-H>', '<C-W>', { noremap = true, silent = true })
vim.keymap.set('v', '<C-H>', '<C-W>', { noremap = true, silent = true })

-- Ctrl+Delete delete word forward
vim.keymap.set('i', '<C-Del>', '<C-o>dw', { noremap = true, silent = true })
vim.keymap.set('i', '<C-Delete>', '<C-o>dw', { noremap = true, silent = true })
vim.keymap.set('v', '<C-Del>', '<C-o>dw<C-c>', { noremap = true, silent = true })

-- move highlighted lines up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- remove the new-line-char at the end of the line without moving the cursor
vim.keymap.set('n', 'J', 'mzJ`z')

-- just half page up and down but keep the line centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep searce elements in the center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- paste over highlighted text without overwriting the paste buffer
vim.keymap.set('x', '<leader>p', '"_dP')

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- delete into void register
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- unmap Q
vim.keymap.set('n', 'Q', '<nop>')

-- switch tmux session
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- quick fix nav
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- replace current word in the hole file
vim.keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod to executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
