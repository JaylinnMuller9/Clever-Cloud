FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    git \
    curl \
    ffmpeg \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

COPY . /app/
WORKDIR /app/

RUN pip install -r requirements.txt

CMD ["bash", "start.sh"]
