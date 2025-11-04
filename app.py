from http.server import SimpleHTTPRequestHandler, HTTPServer

host = "0.0.0.0"
port = 5000

print(f"🚀 Server started at http://{host}:{port}")
server = HTTPServer((host, port), SimpleHTTPRequestHandler)
server.serve_forever()
