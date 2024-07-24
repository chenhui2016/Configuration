local wezterm = require("wezterm")

local config = {
	font_size = 16,
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	color_scheme = "Aco (Gogh)",

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.9,
	text_background_opacity = 0.9,
	line_height = 1.1,

	adjust_window_size_when_changing_font_size = false,

	xim_im_name = "fcitx",

	initial_cols = 100,
	initial_rows = 32,

	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	keys = {
		-- pane
		{ key = "t", mods = "ALT", action = wezterm.action.SpawnTab("DefaultDomain") },
		{ key = "m", mods = "ALT", action = wezterm.action.ShowTabNavigator },
		{ key = "w", mods = "ALT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
		{ key = "n", mods = "SUPER", action = wezterm.action.SpawnWindow },

		-- 分割
		{ key = "d", mods = "ALT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "D", mods = "ALT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },

		-- 切换
		{ key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
		{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
		{ key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
		{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
		-- 调整尺寸 resize pane
		{ key = "H", mods = "ALT", action = wezterm.action.AdjustPaneSize({ "Left", 5 }) },
		{ key = "J", mods = "ALT", action = wezterm.action.AdjustPaneSize({ "Down", 5 }) },
		{ key = "K", mods = "ALT", action = wezterm.action.AdjustPaneSize({ "Up", 5 }) },
		{ key = "L", mods = "ALT", action = wezterm.action.AdjustPaneSize({ "Right", 5 }) },

		-- 窗口
		{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
		{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
		{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
		{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
		{ key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
		{ key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
		{ key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
		{ key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
		{ key = "9", mods = "ALT", action = wezterm.action.ActivateTab(-1) },
	},
}

return config
