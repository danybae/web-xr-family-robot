# Family Robot WebXR Experience

An interactive A-Frame/WebXR scene set in a family home. It includes a story intro, animated dialogue, HELP interactions, keyboard navigation, and an in-page control panel for positioning the room, characters, camera, popups, and buttons.

## Run locally

Python 3 is required. Do not open `index.html` directly because browsers may block local 3D assets and the Save function.

- macOS: double-click `start.command`
- Windows: double-click `start.bat`
- Linux: run `./start.sh`

The experience opens at [http://localhost:5173/](http://localhost:5173/). Keep the terminal window open while using it.

## Controls

- `W` `A` `S` `D`: move
- `Q` / `E`: move down / up
- Mouse or headset: look around
- `Model Controls`: adjust models, camera, room, story popup, and HELP buttons
- `Save`: write the current settings to `scene-config.json`

## Main files

- `index.html`: WebXR experience and control panel
- `server.py`: local server and configuration-saving endpoint
- `scene-config.json`: saved scene settings
- `room_new.glb`, `mom_new.glb`, `child_new.glb`: current 3D models
- `aframe.min.js`: local A-Frame runtime

