tag: user.tabs
-
(tab | tub | top) (open | new): app.tab_open()
go (tab | tub | top) previous: app.tab_previous()
go (tab | tub | top) next: app.tab_next()
(tab | tub | top) close: user.tab_close_wrapper()
(tab | tub | top) (reopen | restore): app.tab_reopen()
go (tab | tub | top) <number>: user.tab_jump(number)
go (tab | tub | top) final: user.tab_final()
(tab | tub | top) (duplicate | clone): user.tab_duplicate()
