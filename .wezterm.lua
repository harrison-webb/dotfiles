-- Pull in the wezterm API
local wezterm = require("wezterm")

-- THis holds the configuration
local config = wezterm.config_builder()

-- Apply config choices here

-- Color scheme
config.color_scheme = "Gruvbox dark, medium (base16)"
--config.color_scheme = 'GruvboxDarkHard'
--config.color_scheme = 'Gruvbox dark, hard (base16)'

-- config.color_scheme = 'OneDark (base16)'
-- config.color_scheme = 'Everforest Dark (Gogh)'
-- config.color_scheme = 'Catppuccin Frappe'
-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = 'kanagawabones'

-- Tab bar styling
config.use_fancy_tab_bar = true

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 13.8

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
