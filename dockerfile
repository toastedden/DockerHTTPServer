# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# The Python SimpleHTTPServer is built into Python 3 as http.server
CMD ["python3", "-m", "http.server", "9000"]

