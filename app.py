FROM python:3.9.7-slim-bullseye

WORKDIR /app

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y git curl ffmpeg python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Python deps
RUN pip install flask flask-restful

# Install sshx (optional)
RUN curl -sSf https://sshx.io/get | sh

COPY app.py .
COPY start.sh .

RUN chmod +x start.sh

CMD ["./start.sh"]
