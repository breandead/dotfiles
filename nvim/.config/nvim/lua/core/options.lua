vim.o.laststatus = 3

vim.o.wrap = false

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Relative line numbers
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Indenting setting
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

vim.o.list = true

-- set timing
vim.o.updatetime = 750
vim.o.timeoutlen = 750

vim.o.scrolloff = 10

vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

-- Set a colored line at 120 chars
vim.o.colorcolumn = "119"

vim.diagnostic.config({ virtual_text = {current_line = true} })

vim.o.splitbelow = true
vim.o.splitright = true

-- set default windows shell to powershell
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    vim.o.shell = 'powershell.exe'
else
    -- on linux will default to /bin/bash now
    vim.o.shell = '/bin/bash'
end
