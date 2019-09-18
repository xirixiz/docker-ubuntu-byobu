### Build the Docker image (docker-cli)
docker build . -t docker-cli

### Run the Docker container (byobu)
docker rm -f docker-cli
docker run --rm -ti --name docker-cli --net host --hostname byobu docker-cli byobu -S work

### Run the Docker container (shell only)
docker rm -f docker-cli
docker run --rm -ti --hostname byobu docker-cli bash
