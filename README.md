This is a very simple authenticating nginx reverse proxy. As written it only supports setting a single user/password.

To build:

```
docker build -t proxy .
```

To run:

- specify the environment either by creating a file with contents like so:

```
SERVER_NAME=my-server-name
UPSTREAM_PORT=1234
USER=my-user
PASSWORD=my-great-password
```

- save that file somewhere (like `.env`). Then:

```
docker run --link web:upstream --detach=true --env-file=./.env --publish=80:80 --name proxy proxy
```

- or by specifying the variables as part of the `docker run` command:

```
docker run --link web:upstream -e SERVER_NAME=foo -e ... --detach=true --publish=80:80 --name proxy proxy
```
