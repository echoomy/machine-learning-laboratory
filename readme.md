# Machine Learning Laboratory

A Docker-based Python environment for studying machine learning without installing Python or ML dependencies on the host system.

The project runs a Jupyter Notebook server on Python 3.12 and is intended to be used with an IDE such as IntelliJ IDEA.

## Configuration

Create the local environment file:

```shell
cp docker/.env.example docker/.env
```

Set a persistent Jupyter authentication token in `docker/.env`:

```dotenv
REPOSITORY__NOTEBOOK_TOKEN=<replace-with-a-long-random-token>
```

The `.env` file is excluded from version control.

## Running the Server

Build and start the Jupyter server from the repository root:

```shell
docker compose -f docker/development.compose.yaml up --build --detach
```

The server is available at:

```text
http://localhost:8080/tree?token=<replace-with-a-long-random-token>
```

Use this URL to connect IntelliJ IDEA to an existing Jupyter server.

## Credits

Made by Egor Chumichev. With love lost and dreams left unchased.
