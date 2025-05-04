tag: user.homophones_open
os: mac
-

pick <user.formatters> <number_small>:
    result = user.homophones_select(number_small)
    insert(user.formatted_text(result, formatters))
    user.homophones_hide()
phones close: user.homophones_hide()
