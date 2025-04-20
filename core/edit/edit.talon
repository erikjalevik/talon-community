# Compound of action(select, clear, copy, cut, paste, etc.) and modifier(word, line, etc.) commands for editing text.
# eg: "select line", "clear all"
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)

# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# Searching
#find it: edit.find()
#next one: edit.find_next()

# Navigation

# The reason for these spoken forms is that "page up" and "page down" are globally defined as keys.
#scroll up: edit.page_up()
#scroll down: edit.page_down()

# go left, go left left down, go 5 left 2 down
# go word left, go 2 words right
go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)

#go line start | head: edit.line_start()
#go line end | tail: edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()
go way right: edit.line_end()
go way (up | sup): edit.file_start()
go way (down | don | done): edit.file_end()

#go top: edit.file_start()
#go bottom: edit.file_end()

go page (up | sup): edit.page_up()
go page (down | don | done): edit.page_down()

# Indentation
indent [more]: edit.indent_more()
  (indent less | dedent): edit.indent_less()

# Copy
copy: edit.copy()

# Cut
cutty: edit.cut()

# Paste
(pasty): edit.paste()
(pasty) enter:
    edit.paste()
    key(enter)
pasty match: edit.paste_match_style()

# Duplication
clone: edit.selection_clone()
clone line: edit.line_clone()

# Insert new line
new line above | wedge: edit.line_insert_up()
new line below | bleed: edit.line_insert_down()

# Insert padding with optional symbols
padding: user.insert_between(" ", " ")
(pad | padding) <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# Undo/redo
(undo | nope): edit.undo()
redo: edit.redo()

# Save
disk: edit.save()
disk all: edit.save_all()

[go] line mid: user.line_middle()
