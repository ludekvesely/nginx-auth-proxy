build:
	docker build -t proxy .
run:
	docker run --detach=true --env-file=./.env --publish=80:80 --name proxy proxy
bash:
	docker run --interactive=true --tty=true --env-file=./.env --publish=80:80 proxy bash
