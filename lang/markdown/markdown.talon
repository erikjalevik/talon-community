code.language: markdown
-
(heading) one:
    edit.line_start()
    "# "
(heading) two:
    edit.line_start()
    "## "
(heading) three:
    edit.line_start()
    "### "
(heading) four:
    edit.line_start()
    "#### "
(heading) five:
    edit.line_start()
    "##### "
(heading) six:
    edit.line_start()
    "###### "

list [one]:
    edit.line_start()
    "- "
list two:
    edit.line_start()
    "    - "
list three:
    edit.line_start()
    "        - "
list four:
    edit.line_start()
    "            - "
list five:
    edit.line_start()
    "                - "
list six:
    edit.line_start()
    "                    - "

{user.markdown_code_block_language} block:
    user.insert_snippet("```{markdown_code_block_language}\n$0\n```")

link:
    "[]()"
    key(left:3)

bullet: "- "
checkbox: "- [ ] "
checkbox (checked | check): "- [x] "
