# README

Copy `config/secrets.yml.example` to `config/secrets.yml`. This step is mandatory

In secrets.yml file add app ID and secret key obtained from different oauth applications. This step is not mandatory if you don't want to use omniauth.


## Docker
Right now there is support only for sqlite database. Will add support for postgres in future.

To run using docker
```
docker-compose build
docker-compose up
```
