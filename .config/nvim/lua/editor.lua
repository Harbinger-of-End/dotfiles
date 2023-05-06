vim.opt.smarttabs = false
vim.opt.nu = true
vim.opt.encoding = 'utf-8'
vim.opt.nobackup = true
vim.opt.nowritebackup = true
vim.opt.updatetime = 300
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.g.editorconfig = true
vim.g.mapleader = ' '
vim.opt.swapfile = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')
vim.keymap.set('x', '<leader>p', '"_dP')
