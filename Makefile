build:
	docker build -t proxy .
run:
	docker run --link web:upstream --detach=true --env-file=./.env --publish=80:80 --name proxy proxy
bash:
	docker run --link web:upstream --interactive=true --tty=true --env-file=./.env --publish=80:80 proxy bash
