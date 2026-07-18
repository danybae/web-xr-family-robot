from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import json


ROOT = Path(__file__).resolve().parent
CONFIG_PATH = ROOT / "scene-config.json"


class Handler(SimpleHTTPRequestHandler):
    def do_POST(self):
        if self.path != "/save-config":
            self.send_error(404, "Not found")
            return

        try:
            length = int(self.headers.get("Content-Length", "0"))
            raw_body = self.rfile.read(length)
            config = json.loads(raw_body.decode("utf-8"))
            CONFIG_PATH.write_text(
                json.dumps(config, indent=2, ensure_ascii=False) + "\n",
                encoding="utf-8",
            )
        except Exception as exc:
            self.send_response(400)
            self.send_header("Content-Type", "application/json")
            self.end_headers()
            self.wfile.write(json.dumps({"ok": False, "error": str(exc)}).encode())
            return

        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.end_headers()
        self.wfile.write(json.dumps({"ok": True, "path": str(CONFIG_PATH)}).encode())


if __name__ == "__main__":
    server = ThreadingHTTPServer(("0.0.0.0", 5173), Handler)
    print("Serving on http://localhost:5173/")
    server.serve_forever()
