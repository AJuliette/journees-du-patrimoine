# Journées du patrimoine

Repo à partir du template [docker-rails-example](https://github.com/nickjj/docker-rails-example). Jetez-y un coup d'oeil pour la documentation !

## Instructions

Pour cloner:

```bash
git clone https://github.com/nickjj/docker-rails-example journees_du_patrimoine
cd journees_du_patrimoine
```

Vous allez avoir besoin de [Docker d'installé](https://docs.docker.com/get-docker/).

Copier le `.env` et modifier les valeurs pour `POSTGRES_USER` et `POSTGRES_PASSWORD`:
```bash
cp .env.example .env
```

Pour build (la première fois ça peut prendre entre 5 à 10 minutes):

```bash
docker compose up --build
```

Vous pouvez ensuite run d'un second terminal:
```bash
./run rails db:setup 
```

Vous pouvez enfin visiter:
```
http://0.0.0.0:8000
```


Puis les commandes habituelles de rails précédées de `./run`:
```bash
./run rails g model post name:string
```
etc


Voilà !