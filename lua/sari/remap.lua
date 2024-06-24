vim.g.mapleader = " "

-- Netrw explorer
vim.keymap.set("n", "<leader>fx", ":Oil<CR>", { desc = "Open file explorer" })

-- Remap for ESC button
vim.keymap.set("i", "jj", "<ESC>", { desc = "Enter normal mode" })

-- Add a new blank line and staying in normal mode
vim.keymap.set('n', '<leader>o', 'o<ESC>', { desc = "Insert a new line" })

-- Paste the zero buffer (the one where yanked text goes to).
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"0p', { desc = "Paste form the 0 buffer (yanked text)" })

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
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Write buffer" })

-- Remap for finding a highlighted text in visual mode
vim.keymap.set('v', '<leader>f', '"fy/<C-r>f<CR>', { desc = "Find highlighted text" })

-- Git blame per line toggle
vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', { desc = "Toggle line blame" })
