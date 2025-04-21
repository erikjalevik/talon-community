tag: user.continuous_scrolling
os: mac
-
<number_small>: user.mouse_scroll_set_speed(number_small)

[spin] stop: user.mouse_scroll_stop()
[spin] stop here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()
