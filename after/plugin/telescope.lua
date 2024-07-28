require("telescope").setup {
    pickers = {
        find_files = {
            mappings = {
                i = {
                    ["<C-k>"] = "cycle_history_prev",
                    ["<C-j>"] = "cycle_history_next",
                },
                n = {
                    ["<C-k>"] = "cycle_history_prev",
                    ["<C-j>"] = "cycle_history_next",
                },
            },
        },
    },
    extensions = {
        live_grep_args = {
            mappings = {
                i = {
                    ["<C-k>"] = "cycle_history_prev",
                    ["<C-j>"] = "cycle_history_next",
                },
                n = {
                    ["<C-k>"] = "cycle_history_prev",
                    ["<C-j>"] = "cycle_history_next",
                },
            },
        }
    }
}
require("telescope").load_extension("live_grep_args")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
    { desc = '[F]ind [G]rep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>qf', builtin.quickfix, { desc = '[F]ind [Q]uick[F]ix' })
