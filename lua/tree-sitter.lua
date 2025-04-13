return {
	ensure_installed = { 'lua', 'rust', 'toml', 'markdown' },
	auto_install = true,
	hightlight = {
		enable = true,
		additional_vim_regex_highlighting=false,
	},
	ident = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
}
