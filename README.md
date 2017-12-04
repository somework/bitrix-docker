```
to be continued
```



___

# ORIGINAL REPO README (see below)

> на всякий случай, оставлю это тут...

# BitrixDock
BitrixDock позволяет легко и просто запускать **Bitrix CMS** на **Docker**.

## Введение
BitrixDock облегчает разработку на Битрикс предоставляя готовые сервисы PHP, NGINX, MySQL, REDIS и многие другие.

### Возможности
- Легкое переключение между PHP версиями: 7.0 - 5.6 - 5.5 ...
- Выбирайте свою базу данных: MySQL - MariaDB ...
- Запускайте свою комбинацию сервисов: Memcached - Postgres ...
- Каждый сервис запускается в отдельном контейнере: PHP-FPM - NGINX ...
- Любой контейнер легко кастомизировать через `Dockerfile`.
- Все образы контейнеров взяты из официальных источников. (Trusted base Images).
- Настроенный Nginx под Битрикс.
- Data контейнер, для хранения данных.

### Поддерживаемые контейнеры
- PHP-FPM (7.0 - 5.6 - 5.5)
- NGINX
- MySQL
- PostgreSQL
- MariaDB
- Neo4j
- MongoDB
- Redis
- Memcached
- Beanstalkd
- Beanstalkd Console
- Workspace (contains: Composer, PHP7-CLI, Laravel Installer, Git, Node, Gulp, Bower, SQLite,  Vim, Nano, cURL and much more)
- Data *(Databases Data Container)*
- Application *(Application Code Container)*

## Установка Docker на Windows & Mac
Установите [DockerToolbox](https://www.docker.com/products/docker-toolbox). Будут установлены:
* DockerClient
* DockerMachine
* DockerCompose
* VirtualBox
* Kinematic
* Git

В дальнейшем нужно будет указывать IP адрес виртуальной машины (например для соединения с БД). По умолчанию это 192.168.99.100. Подробнее про [DockerMachine](https://docs.docker.com/machine/).

## Установка Docker на Linux
Установите самостоятельно:
* [Docker](https://docs.docker.com/engine/installation/linux/)
* [DockerCompose](https://docs.docker.com/engine/installation/linux/ubuntulinux/)

## Установка
1. Перейдите в папку где будет хранится репозиторий. 
    * Для Windows пользователей **требуется** указывать папку в домашней папке пользователя, например: C:\Users\Ivan\www\. Иначе могут возникнуть проблемы с правами.
2. Склонируйте репозиторий `BitrixDock`.<br>
```bash
git clone https://github.com/vmpartner/bitrixdock.git
```

## Запуск
<ol>
  <li>(Для Windows & Mac) Откройте Docker консоль (Docker Quickstart Terminal), подождите пока запустится DockerMachine.</li>
  <li>Перейдите в папку с BitrixDock. Запустите нужные вам контейнеры.</li>
</ol>
```bash
docker-compose up -d nginx php-fpm mysql
```
<ol start="3">
  <li>Откройте IP адрес DockerMachine в браузере. (Cтандартный адрес в Windows http://192.168.99.100)</li>
</ol>

## Пароли
* SSH (192.168.99.100:22 - Windows)
    * USER: docker
    * PASSWORD: tcuser
* Database
    * HOST: (192.168.99.100:3306 - Windows)
    * NAME: sitemanager
    * USER: bitrix
    * PASSWORD: bitrix
    * ROOT_PASSWORD: root
    
## Fork source
BitrixDock скопирован и модифицирован из LaraDock (Docker для Laravel) https://github.com/LaraDock/laradock

## Установка в проект
```bash
git submodule add https://github.com/vmpartner/bitrixdock.git
```
