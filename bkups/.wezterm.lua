local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {
	font_size = 11.0,
	automatically_reload_config = true,
	enable_tab_bar = false,
	color_scheme = "Kanagawa (Gogh)",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,

		bottom = -20,
	},
	background = {
		{
			source = {
				File = "/home/jon/Pictures/wallhaven-d6j79o.png",
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#000000",
			},
			opacity = 0.5,
			width = "100%",
			height = "100%",
		},
	},
	keys = {
		{
			key = "s",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitPane({
				direction = "Right",
				size = { Percent = 40 },
			}),
		},
		{
			key = "d",
			mods = "CTRL|SHIFT",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
	},
}

return config
