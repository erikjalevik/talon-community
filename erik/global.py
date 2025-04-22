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
