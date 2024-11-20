-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 10.0

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- config.color_scheme = "Glacier"

-- it stunning, the green is colorful alive come strong
-- the background makes the font alive and watery?
-- but the background must be dark/black otherwise it looks like something is missing
config.color_scheme = "GitHub Dark (Gogh)"

--[[
--chatgpt better IMHO
--config.colors = {
	foreground = "#c9d1d9",
	background = "#0D1117",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
]]

--[[
--youtube version	
--config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
]]

config.window_background_opacity = 1

-- Set the path to your PNG image
config.window_background_image = "/home/wsj/Pictures/macos-monterey-stock-red-light-layers-5k-6016x6016-5897.jpg"

-- config.window_background_image = "/home/wsj/Pictures/macos-monterey-stock-green-dark-mode-layers-5k-6016x6016-5890.jpg"

-- config.window_background_image = "/home/wsj/Pictures/macos-monterey-stock-blue-dark-mode-layers-5k-6016x6016-5895.jpg"

-- Customize the background appearance
config.window_background_image_hsb = {
	brightness = 0.2, -- Adjust the image brightness (0.0 to 1.0)
	hue = 1.0, -- Adjust the hue (1.0 is normal)
	saturation = 1.0, -- Adjust the saturation (1.0 is normal)
}

-- Add fullscreen toggle keybinding
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
