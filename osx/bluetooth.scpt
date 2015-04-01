property thePane : "com.apple.preferences.bluetooth"


tell application "System Preferences"
  activate
  set the current pane to pane id thePane
end tell
---
tell application "System Events"
  tell application process "System Preferences"
    try
      click button "Turn Bluetooth Off" of window "Bluetooth"

    on error
      click button "Turn Bluetooth On" of window "Bluetooth"
    end try
  end tell
end tell
