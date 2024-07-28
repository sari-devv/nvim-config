return {
    "LudoPinelli/comment-box.nvim",
    config = function()
        require('comment-box').setup({
            lines = { -- symbols used to draw a line
                -- line = "*",
                -- line_start = "*",
                -- line_end = "*"
            }
        })
    end
}
