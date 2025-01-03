@tool
extends Node


@export
var input_action_sets: Array[InputActionSet] = []


@export_tool_button("Initialize")
var _i = initialize

func initialize():
	for action_set in input_action_sets:
		for action in action_set.actions:
			if action_set.actions[action].events.is_empty():
				continue
			if not InputMap.has_action(action):
				InputMap.add_action(action)
			for event in action_set.actions[action].events:
				InputMap.action_add_event(action, event)

	for action_set in input_action_sets:
		for action in action_set.actions:
			var settings_name = "input/%s" % action
			var events:Array = InputMap.action_get_events(action).map(func(e): return e)
			if events.is_empty():
				continue
			ProjectSettings.set_setting(settings_name, {
				"deadzone": InputMap.action_get_deadzone(action),
				"events": events
			})
	
	ProjectSettings.save()
	InputMap.load_from_project_settings()
