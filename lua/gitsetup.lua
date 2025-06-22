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
        map('n', 'gnh', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(gs.next_hunk)
            return '<Ignore>'
        end, { expr = true })

        map('n', 'gph', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(gs.prev_hunk)
            return '<Ignore>'
        end, { expr = true })

        -- Actions
        map('n', 'ghs', gs.stage_hunk)
        map('n', 'ghr', gs.reset_hunk)
        map('n', 'ghp', gs.preview_hunk)
        map('n', 'ghb', gs.blame_line)
    end,
}
