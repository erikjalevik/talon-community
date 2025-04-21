tag: user.line_commands
os: mac
-
go line <number>: edit.jump_line(number)
go line <number> end:
    edit.jump_line(number)
    edit.line_end()
go line <number> home:
    edit.jump_line(number)
    edit.line_start()
comment line <number>:
    user.select_range(number, number)
    code.toggle_comment()
comment line <number> until <number>:
    user.select_range(number_1, number_2)
    code.toggle_comment()
clear line <number>:
    user.select_range(number, number)
    edit.delete()
clear line <number> until <number>:
    user.select_range(number_1, number_2)
    edit.delete()
copy line <number>:
    user.select_range(number, number)
    edit.copy()
copy line <number> until <number>:
    user.select_range(number_1, number_2)
    edit.copy()
cutty line <number>:
    user.select_range(number, number)
    edit.cut()
cutty line <number> until <number>:
    user.select_range(number_1, number_2)
    edit.cut()
(pasty | replace) line <number> until <number>:
    user.select_range(number_1, number_2)
    edit.paste()
(select | cell | sell) line <number>: user.select_range(number, number)
(select | cell | sell) line <number> until <number>: user.select_range(number_1, number_2)
drag line (down | don | done): edit.line_swap_down()
drag line (up | sup): edit.line_swap_up()
drag up line <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag (down | don | done) line <number>:
    user.select_range(number, number)
    edit.line_swap_down()
drag (down | don | done) <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone line <number>: user.line_clone(number)
