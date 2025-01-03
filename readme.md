# Input Initializer
Addon For Godot(4.4+) (@export_tool_button is only available in 4.4+)

I'm tired of setting up inputmap; so I made this plugin to help initialize inputs.

## How to install
Download this repository, and unzip the addons directory to your project directory.

(Since 4.4 has not been officially released yet, I haven't published it to the asset library; I will do so after the release)

Or better, use some package manager like [gd-plug](https://github.com/imjp94/gd-plug),[godotenv](https://github.com/chickensoft-games/GodotEnv), etc. to install and manage your addons. 

## How to use
### Use existing preset
1.Open `input_initializer.tscn` and select the root node (You can quickly search it in the file tab)

2.Drag or quick load the preset you need into `InputActionSets` in inspector

3.Click the "Initialize" button, and the input events in the preset will be added to the input map

### Create new preset
1.Open `input_initializer.tscn` and select the root node

2.In `InputActionSets`, create a new InputActionSet

3.Set it up (Check the presets in addons folder for reference)

Don't forget to save your preset for future use. If your preset is general enough, very welcome to provide it to this repository to help others!

Once the initialization is complete, this plugin has completed its mission; feel free to exclude it from the export.


## Notes

The inputs will not appear immediately in the `InputMap` under `ProjectSettings`. This is a [known issue](https://github.com/godotengine/godot/issues/25865) in Godot. However, they are saved and exist in the `InputMap`, so don't worry! You can use them immediately and they will work normally.

If you need to see the inputs in the `InputMap` immediately, reload the project.

When editing nested resources, I found the UX of the inspector in Godot to be very painful and unintuitive. I have to say this part of the experience is very bad :(

If you have the same feeling, please give [this issue](https://github.com/godotengine/godot-proposals/issues/10125) a 👍, or better, make a PR to improve this part of the experience!


## Attached Presets
### fps_basic:
| actions       | controller(Xbox layout)        | keyboard   |
| ------------- | ----------------- | ---------- |
| move_forward  | Left Stick Up     | W          |
| move_backward | Left Stick Down   | S          |
| move_left     | Left Stick Left   | A          |
| move_right    | Left Stick Right  | D          |
| look_up       | Right Stick Up    |            |
| look_down     | Right Stick Down  |            |
| look_left     | Right Stick Left  |            |
| look_right    | Right Stick Right |            |
| jump          | A                 | Space      |
| crouch        | B                 | Ctrl       |
| sprint        | L3                | Shift |


### rpgmaker_style:
| actions       | controller(Xbox layout)        | keyboard   |
| ------------- | ----------------- | ---------- |
| move_up  | Left Stick Up     | arrow up          |
| move_down | Left Stick Down   | arrow down          |
| move_left     | Left Stick Left   | arrow left          |
| move_right    | Left Stick Right  | arrow right          |
| action       | A    |    Z        |
| cancel     | B  |    X        |
| menu     | Y  |    X        |
| dash    | X |     Shift       |


Welcome to contribute your preset!