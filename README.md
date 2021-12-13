## Hurrican-RPi
Installation scriptmodule for use with RetroPie. Currently RPi4 only.
https://retropie.org.uk

#### Hurrican - Turrican clone

A freeware jump and shoot game made by Poke53280 (Eiswuxe) and based on the Turrican series of run and gun platformers:
https://www.winterworks.de/project/hurrican/

This module installs the SDL2 port by drfiemost, hosted at:
https://github.com/drfiemost/Hurrican

## Installation

Download the scriptmodule with command:

    wget https://raw.githubusercontent.com/s1eve-mcdichae1/Hurrican-RPi/main/hurrican.sh -P $HOME/RetroPie-Setup/scriptmodules/ports/
After that you can install the port through **RetroPie-Setup > Manage packages > Manage experimental packages**

## What's new
- Force feedback enabled.
- Branch `joystick_pause` promoted to `master`.
- Some updates to the repo bring gamepad-related bug fixes and gamepad pause/menu support.

Fixed:
- Gamepad "pause/menu" button is hardcoded. Edit file `Hurrican/src/DX8Joystick.cpp` line 172, or use keyboard ESC key. (Fixed: autodetects button mapping with SDL_GameController API)
- No "pause" or "menu" button on the gamepad. Once you begin a game, you *cannot exit* without a keyboard to press [Esc]. (Workaround with hard-coded menu button.)
- With gamepad control enabled, game text reads, for example "`crouch by pressing 'Joypad leftJoypad rightJoypad downJoypad upJoypad down'`" instead of just "`crouch by pressing 'Joypad down'`." Issue not present with keyboard control. (Fixed with `append` >> `assign`.)
- Tutorial level crashes with a segfault, in the same place every time (just after the destructible wall where it shows you the smartbomb.) (Magically vanished when above was fixed.)
- `--pathsave` param not working. (Fixed with `create_directory` >> `is_directory`.)
