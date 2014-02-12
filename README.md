## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) meant to pull proxy configs from [`etcd`](https://github.com/coreos/etcd), a highly-available key value store for shared configuration and service discovery.


### Dependencies

* None at present


### Installation

1. Install [Docker](https://www.docker.io/).

2. Build an image from Dockerfile: `docker build -t="<username>/nginx" github.com/saidimu/nginx-dockerfile`)


### Usage

    docker run -d -p 80:80 <username>/nginx

Open `http://<host>` to see the welcome page.
