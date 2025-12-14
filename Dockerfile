FROM python:3.9.7-slim-bullseye

WORKDIR /app

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install flask flask-restful

COPY app.py .

CMD ["python3", "app.py"]
