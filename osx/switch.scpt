property thePane : "com.apple.preferences.bluetooth"

tell application "Terminal"
  activate
  my execCmd("ssh ", 1)
  my execCmd("", 5)
  my execCmd("osascript ~/dotfiles/osx/bluetooth.scpt", 0)
  my toggleBluetooth()
end tell

on execCmd(cmd, pause)
  tell application "System Events"
    tell application process "Terminal"
      set frontmost to true
      keystroke cmd
      keystroke return
    end tell
  end tell
  delay pause
end execCmd

on toggleBluetooth()
  tell application "System Preferences"
    activate
    set the current pane to pane id thePane
  end tell
  tell application "System Events"
    tell application process "System Preferences"
      try
        click button "Turn Bluetooth Off" of window "Bluetooth"
      on error
        click button "Turn Bluetooth On" of window "Bluetooth"
      end try
    end tell
  end tell
end toggleBluetooth
