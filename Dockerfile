FROM ubuntu:latest
WORKDIR /app
COPY . .

RUN apt update && apt install -y gcc