local mod = get_mod("weapon_customization")

return {
	name = mod:localize("mod_title"),
	description = mod:localize("mod_description"),
	is_togglable = false,
	options = {
		widgets = {
			{["setting_id"] = "reposition_attachments",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_attachments",
			},
			{["setting_id"] = "reposition_x_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_x_neg",
			},
			{["setting_id"] = "reposition_x_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_x_pos",
			},
			{["setting_id"] = "reposition_y_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_y_neg",
			},
			{["setting_id"] = "reposition_y_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_y_pos",
			},
			{["setting_id"] = "reposition_z_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_z_neg",
			},
			{["setting_id"] = "reposition_z_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "reposition_z_pos",
			},
			{["setting_id"] = "rerotate_x_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_x_neg",
			},
			{["setting_id"] = "rerotate_x_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_x_pos",
			},
			{["setting_id"] = "rerotate_y_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_y_neg",
			},
			{["setting_id"] = "rerotate_y_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_y_pos",
			},
			{["setting_id"] = "rerotate_z_neg",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_z_neg",
			},
			{["setting_id"] = "rerotate_z_pos",
				["type"] = "keybind",
				["default_value"] = {"J"},
				["keybind_trigger"] = "pressed",
				["keybind_type"] = "function_call",
				["function_name"] = "rerotate_z_pos",
			},
		},
	},
}
