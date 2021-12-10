# Hurrican-RPi
Hurrican - Turrican clone

Installation scriptmodule for use with RetroPie. Currently RPi4 only.

A freeware jump and shoot game made by Poke53280 (Eiswuxe) and based on the Turrican series of run and gun platformers: https://www.winterworks.de/project/hurrican/

SDL2 port by drfiemost (branch `joystick_pause`): https://github.com/drfiemost/Hurrican/tree/joystick_pause

Some updates to the repo bring gamepad-related bug fixes and preliminary gamepad menu support.

Issues:
- Gamepad "pause/menu" button is hardcoded. Edit file `Hurrican/src/DX8Joystick.cpp` line 172, or use keyboard ESC key.

Fixed:
- No "pause" or "menu" button on the gamepad. Once you begin a game, you *cannot exit* without a keyboard to press [Esc]. (Workaround with hard-coded menu button.)
- With gamepad control enabled, game text reads, for example "`crouch by pressing 'Joypad leftJoypad rightJoypad downJoypad upJoypad down'`" instead of just "`crouch by pressing 'Joypad down'`." Issue not present with keyboard control. (Fixed with `append` >> `assign`.)
- Tutorial level crashes with a segfault, in the same place every time (just after the destructible wall where it shows you the smartbomb.) (Magically vanished when above was fixed.)
- `--pathsave` param not working. (Fixed with `create_directory` >> `is_directory`.)
