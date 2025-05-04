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
drag line (down | don | done): edit.line_swap_down()
drag line (up | sup): edit.line_swap_up()
