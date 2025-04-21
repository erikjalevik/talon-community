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

# --- Exports ---    

# Modes
^go to sleep [<phrase>]$: speech.disable()

# Text insertion
{user.prose_formatter} <user.prose>$: user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> {user.phrase_ender}:
  user.insert_formatted(prose, prose_formatter)
  insert(phrase_ender)
<user.format_code>+$: user.insert_many(format_code_list)
<user.format_code>+ {user.phrase_ender}:
    user.insert_many(format_code_list)
    insert(phrase_ender)
{user.word_formatter} <user.word>: user.insert_formatted(word, word_formatter)
scratch that: user.clear_last_phrase()    

# Text editing
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)
copy: edit.copy()
cutty: edit.cut()
pasty: edit.paste()
clone line: edit.line_clone()
wedge: edit.line_insert_up()
bleed: edit.line_insert_down()
(undo | nope): edit.undo()
redo: edit.redo()
disk: edit.save()
disk all: edit.save_all()

# Cursor navigation
go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)
go way left:
    edit.line_start()
    edit.line_start()
go way right: edit.line_end()
go way (up | sup): edit.file_start()
go way (down | don | done): edit.file_end()
go page (up | sup): edit.page_up()
go page (down | don | done): edit.page_down()

# Recents
recent list: user.toggle_phrase_history()
recent close: user.phrase_history_hide()
recent repeat <number_small>:
    recent_phrase = user.get_recent_phrase(number_small)
    user.add_phrase_to_history(recent_phrase)
    insert(recent_phrase)
recent copy <number_small>: clip.set_text(user.get_recent_phrase(number_small))

# Window management
window (new | open): app.window_open()
window next: key(alt-tab)
window previous: app.window_previous()
window close: app.window_close()
window hide: app.window_hide()
focus <user.running_applications>: user.switcher_focus(running_applications)
focus$: key("cmd-alt-`")
focus next: key("cmd-tab")
focus previous: user.switcher_focus_last()
running list: user.switcher_toggle_running()
running close: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)
windscreen <user.window_snap_position>: user.snap_window(window_snap_position)
windscreen next [screen]: user.move_window_next_screen()
windscreen previous [screen]: user.move_window_previous_screen()
windscreen <number>: user.move_window_to_screen(number)

# Media
volume (up | sup): key(volup)
volume (down | don | done): key(voldown)
set volume <number>: user.media_set_volume(number)
media mute: key(mute)
media play next: key(next)
media play previous: key(prev)
media (play | stop): user.play_pause()

# Mouse
click:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()
right click:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()
mid click:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(2)
    # close the mouse grid
    user.grid_close()
double click:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()            
mouse here: user.mouse_move_center_active_window()
scroll up: 
  user.mouse_scroll_down(6.0)
scroll (down | done | don): 
  user.mouse_scroll_up(6.0)
scroll left: 
  user.mouse_scroll_right(5.0)
scroll right: 
  user.mouse_scroll_left(5.0)
spin up:
    user.mouse_scroll_down_continuous()
spin (down | done | don):
    user.mouse_scroll_up_continuous()      

# Repeater
<number_small> (times | ex): core.repeat_command(number_small - 1)
twice: core.repeat_command(1)
thrice: core.repeat_command(2)
fourfold: core.repeat_command(3)
fivefold: core.repeat_command(4)
repeat <number_small> [(times | ex)]: core.repeat_command(number_small)


# --- Additions ---

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
finish: key(f6)

# VSCode
(tab | tub | top) right: key(ctrl-cmd-right)
(tab | tub | top) left: key(ctrl-cmd-left)
chat switch: key(ctrl-=)

# Other
to be done: "// TODO: "
shortcat: key("shift-cmd-space")
