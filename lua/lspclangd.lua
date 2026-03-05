return {
    cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },
    filetypes = {
        'c',
        'cpp',
        'objc',
        'objcpp'
    },
    init_options = {
        fallbackFlags = { '-std=c++23' },
    },
}
