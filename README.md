<div align="center">
    <img src="https://res.cloudinary.com/rexcuni/image/upload/v1688969225/favicon_oxddqi.png" width="80px">
    <br>
    <h1>Docker LEMP Stack</h1>
</div>
<p align="center">
    <a href="https://didepanlayar.com" target="_blank"><img alt="" src="https://img.shields.io/badge/Website-1DA1F2?style=normal&logo=dribbble&logoColor=white" style="vertical-align: center" /></a>
    <a href="https://instagram.com/didepanlayar" target="_blank"><img alt="" src="https://img.shields.io/badge/Instagram-DD2A7B?style=normal&logo=instagram&logoColor=white" style="vertical-align: center" /></a>
    <a href="https://www.youtube.com/@didepanlayar" target="_blank"><img alt="" src="https://img.shields.io/badge/YouTube-CD201F?style=normal&logo=youtube&logoColor=white" style="vertical-align: center" /></a>
</p>

## Description
LEMP Stack (Linux, Nginx, MySQL and PHP) using Docker. 

## Install Prerequisites
All requisites should be available for your distribution. The most important are:
1. [Git](https://git-scm.com/downloads)
2. [Docker](https://docs.docker.com/engine/installation)
3. [Docker Compose](https://docs.docker.com/compose/install)

## Overview
All images are used:
| Name                                            | Tag        |
| ----------------------------------------------- | ---------- |
| [Nginx](https://hub.docker.com/_/nginx/)        | 1.25.2     |
| [PHP-FPM](https://hub.docker.com/_/php)         | 7.4.33-fpm |
| [MariaDB](https://hub.docker.com/_/mariadb)     | 10.11.5    |

## Project Tree

```sh
LEMP
├── Makefile
├── README.md
├── data
├── docker-compose.yml
├── logs
│   └── nginx
├── nginx
│   └── sites
│       ├── app.conf.example
│       └── default.conf
└── php-fpm
    └── php.ini
```

Place your PHP Project outside this folder.

```sh
.
├── LEMP
├── App A
├── App B
├── App C
└── Etc
```

Then you can add or change the nginx configuration in `nginx/sites/default.conf` and add your local domain to `/etc/hosts`.

## Environment
To run this project you need to add following environment variables to your `.env` file.

```
# Application
APP_NAME=myapp

# MariaDB
MARIADB_USER=default
MARIADB_PASSWORD=secret
MARIADB_ROOT_PASSWORD=root
```

## Run
1. Copy and modify the `.env` file.

    ```sh
    cp .env.example .env
    ```

    Modify the `.env` file with the following [Environment](#environment) above.

2. Start services.

    ```sh
    docker-compose up -d
    ```

3. Accessing the LEMP containers.

    ```sh
    docker exec -it lemp-php-fpm /bin/bash
    ```

4. Stop and clear services.

    ```sh
    docker-compose down -v
    ```

Or, you can use a Makefile to run the service.

```sh
make help
```

## Tech Stack
- Git
- Docker
- Docker Compose
- Visual Studio Code
- DBeaver
