os: mac
-

settings():
    speech.timeout = 0.4
    user.listening_timeout_minutes = 3
    user.window_snap_screen = "proportional"
    user.subtitles_size = 80
    user.subtitles_show = true
    user.subtitles_screens = "focus"
    user.subtitles_timeout_per_char = 100
    user.subtitles_timeout_min = 1000
    user.subtitles_timeout_max = 2500

# tag(): user.unprefixed_numbers
tag(): user.full_mouse_grid_enabled

key(alt-f5):
    speech.toggle()

# Arrow keys
left: edit.left()
right: edit.right()
sup: edit.up()
don: edit.down()

# Mermaid
sink arrow: "->>"
a sink arrow: "-)"
a sink return: "(--"

# Cursor
finish : key(f6)

# VSCode
(tab | tub | top) right: key(ctrl-cmd-right)
(tab | tub | top) left: key(ctrl-cmd-left)
chat switch: key(ctrl-=)

# Other
to be done: "// TODO: "