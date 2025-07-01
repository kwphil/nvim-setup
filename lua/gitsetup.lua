return {
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        changedelete = { text = '~'},
    },

    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, lhs, rhs, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, lhs, rhs, opts)
        end

        -- Navigation
        map('n', 'ghd', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(gs.next_hunk)
            return '<Ignore>'
        end, { expr = true })

        map('n', 'gha', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(gs.prev_hunk)
            return '<Ignore>'
        end, { expr = true })

        -- Actions
        map('n', 'ghj', gs.stage_hunk)
        map('n', 'ghm', gs.reset_hunk)
        map('n', 'ghk', gs.preview_hunk)
        map('n', 'ghn', gs.blame_line)
    end,
}
