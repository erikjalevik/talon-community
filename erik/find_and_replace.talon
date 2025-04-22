tag: user.find_and_replace
os: mac
-
tag(): user.find

replace [<user.text>]: user.replace(text or "")

search: user.find_everywhere("")
search <user.text>: user.find_everywhere(text)

search replace: user.replace_everywhere("")
search replace <user.text>: user.replace_everywhere(text)

go previous <user.text> [over]:
    user.select_previous_occurrence(text)
    sleep(100ms)
    edit.right()
go next <user.text> [over]:
    user.select_next_occurrence(text)
    edit.right()
select previous <user.text> [over]: user.select_previous_occurrence(text)
select next <user.text> [over]: user.select_next_occurrence(text)
