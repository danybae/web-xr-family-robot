# Family Robot WebXR Experience

An interactive A-Frame/WebXR scene set in a family home. It includes a story intro, animated dialogue, HELP interactions, keyboard navigation, and an in-page control panel for positioning the room, characters, camera, popups, and buttons.

## Requirements

- Python 3.8 or newer
- A current browser; Chrome or Edge is recommended for WebXR

No npm install, API key, environment variable, or model download is required. A-Frame and all three GLB models are included in the repository.

## Clone and run

```bash
git clone https://github.com/danybae/web-xr-family-robot.git
cd web-xr-family-robot
```

- macOS: double-click `start.command`. If macOS blocks it, right-click the file and choose **Open**.
- Windows: double-click `start.bat`.
- Linux: run `chmod +x start.sh && ./start.sh`.

Alternatively, run `python3 server.py` on macOS/Linux or `py -3 server.py` on Windows, then open [http://localhost:5173/](http://localhost:5173/).

Keep the terminal window open while using the experience. Do not open `index.html` directly because browsers may block the local 3D assets and the Save function.

## Configuration and saving

The checked-in `scene-config.json` is ready to use, so no initial configuration is needed. The in-page **Save** button writes the current controls back to that file. Run the project from a writable folder; saved changes remain local until they are committed and pushed to GitHub.

Port `5173` must be available. If startup reports that the address is already in use, stop the other process using that port and start the experience again.

## Access on the same Wi-Fi

While the server is running, another device on the same Wi-Fi can open `http://YOUR-COMPUTER-IP:5173/`. Allow incoming Python connections if the firewall asks.

Desktop viewing works over the local network. Immersive WebXR on a headset may require HTTPS because a LAN address is not treated as a secure browser context; `localhost` is exempt from that restriction.

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
