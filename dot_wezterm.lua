local wezterm = require "wezterm"
local config = {}
local act = wezterm.action

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'AdventureTime'
config.default_prog = {"nyagos"}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}



return config
