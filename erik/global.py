from talon import Module, actions, app, ui, canvas
import os

mod = Module()

@mod.action_class
class Actions:
    def toggle_microphone():
        """Toggle microphone on/off"""
        current_mic = actions.sound.active_microphone()
        if current_mic == "None":
            actions.sound.set_microphone("System Default")
            actions.speech.enable()
            app.notify("Microphone enabled and Talon activated")
        else:
            actions.sound.set_microphone("None")
            actions.speech.disable()
            app.notify("Microphone disabled and Talon put to sleep")

    def delete_word_left_n(n: int):
        """Delete left n words"""
        for _ in range(n):
            actions.edit.extend_word_left()
        actions.edit.delete()

    def delete_word_right_n(n: int):
        """Delete right n words"""
        for _ in range(n):
            actions.edit.extend_word_right()
        actions.edit.delete()

    def focus_window_with(app_substring: str, title_substring: str):
        """Focuses the first window whose title contains the given substring."""
        for window in ui.windows():
            if app_substring in window.app.name and title_substring in window.title:
                try:
                    actions.user.switcher_focus_window(window)
                    return
                except RuntimeError as e:
                    app.notify(f"Error focusing window: {e}")
                    return
        app.notify(f"No window found with app '{app_substring}' and title containing: '{title_substring}'")
