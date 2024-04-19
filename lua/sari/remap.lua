vim.g.mapleader = " "

-- Netrw explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Remap for ESC button
vim.keymap.set("i", "jj", "<ESC>")

-- Add a new blank line and staying in normal mode
vim.keymap.set('n', '<leader>o', 'o<ESC>')

-- Remaps for splitting windows
vim.keymap.set('n', '<leader>|', '<c-w>v')
vim.keymap.set('n', '<leader>-', '<c-w>s')

-- A function to format the file if we are attached to an LSP.
formatFile = function()
    active_clients = vim.lsp.get_active_clients();
    if next(active_clients) == nil then
       return 
    end
    
    vim.lsp.buf.format { async = true }
end

-- Remap for writing file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Remap for finding a highlighted text in visual mode
vim.keymap.set('v', '<leader>f', '"fy/<C-r>f<CR>')

-- Git blame per line toggle
vim.keymap.set('n', '<leader>gb',  ':GitBlameToggle<CR>')
