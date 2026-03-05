return {
    default_config = {
        cmd = { 'godot', '--language-server' },
        filetypes = { 'gd', 'gdscript' },
        root_dir = function(fname)
            return vim.lsp.util.root_pattern('project.godot')(fname)
        end,
        settings = {},
    }
}
