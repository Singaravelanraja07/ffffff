FROM ubuntu:latest

RUN apt-get update 
RUN apt install -y nginx

WORKDIR /app
COPY . .

COPY index.html /usr/share/nginx/html/
COPY hello.conf /etc/nginx/sites-available/

EXPOSE 80
