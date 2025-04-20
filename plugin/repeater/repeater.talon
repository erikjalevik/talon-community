# -1 because we are repeating, so the initial command counts as one
#<user.ordinals>: core.repeat_command(ordinals - 1)
<number_small> (times | ex): core.repeat_command(number_small - 1)
twice: core.repeat_command(1)
thrice: core.repeat_command(2)
fourfold: core.repeat_command(3)
fivefold: core.repeat_command(4)
repeat <number_small> [(times | ex)]: core.repeat_command(number_small)

#(repeat phrase | again) [<number_small> times]:
#    core.repeat_partial_phrase(number_small or 1)
