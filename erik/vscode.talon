app: vscode
os: mac
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): user.command_search

window reload: user.vscode("workbench.action.reloadWindow")
window close: user.vscode("workbench.action.closeWindow")

# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
bar test: user.vscode("workbench.view.testing.focus")
bar switch: user.vscode("workbench.action.toggleSidebarVisibility")

# Panels
panel output: user.vscode("workbench.panel.output.focus")
panel problems: user.vscode("workbench.panel.markers.view.focus")
panel switch: user.vscode("workbench.action.togglePanel")
panel terminal: user.vscode("workbench.action.terminal.focus")
panel editor: user.vscode("workbench.action.focusActiveEditorGroup")

# Settings
settings show: user.vscode("workbench.action.openGlobalSettings")
settings show json: user.vscode("workbench.action.openSettingsJson")
settings show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
settings show shortcuts json: user.vscode("workbench.action.openGlobalKeybindingsFile")

# File Commands
file create: user.vscode("workbench.action.files.newUntitledFile")
file create sibling: user.vscode_and_wait("explorer.newFile")
file create relative: user.vscode("fileutils.newFile")
file rename:
    user.vscode("fileutils.renameFile")
    sleep(150ms)
file move:
    user.vscode("fileutils.moveFile")
    sleep(150ms)
    user.vscode("fileutils.duplicateFile")
    sleep(150ms)
file delete:
    user.vscode("fileutils.removeFile")
    sleep(150ms)
file format: user.vscode("editor.action.formatDocument")

# Language Features
go problem next: user.vscode("editor.action.marker.nextInFiles")
go problem previous: user.vscode("editor.action.marker.prevInFiles")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")

# Navigation
go back: user.vscode("workbench.action.navigateBack")
go forward: user.vscode("workbench.action.navigateForward")

# Bookmarks. Requires Bookmarks plugin
bar marks: user.vscode("workbench.view.extension.bookmarks")
mark toggle: user.vscode("bookmarks.toggle")
go mark next: user.vscode("bookmarks.jumpToNext")
go mark previous: user.vscode("bookmarks.jumpToPrevious")

# Editors
(tab | tub | top) close other: user.vscode("workbench.action.closeOtherEditors")
(tab | tub | top) close all: user.vscode("workbench.action.closeAllEditors")

# Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
debug step: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug end: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")
debug console: user.vscode("workbench.debug.action.toggleRepl")
debug clean: user.vscode("workbench.debug.panel.action.clearReplAction")

# Cursor
curse undo: user.vscode("cursorUndo")
curse redo: user.vscode("cursorRedo")

# Markdown
markdown preview: user.vscode("markdown.showPreview")
