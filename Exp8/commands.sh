# Install Docker (Ubuntu)
sudo apt update
sudo apt install docker.io
sudo docker run hello-world

# Build the image
docker build -t python-test .

# Run the image
docker run python-test

## Useful Docker commands
docker image ls                          # list images
docker image rm [image name]             # delete a specific image
docker image rm $(docker images -a -q)   # delete all images
docker ps -a                             # list all containers
docker stop [container name]             # stop a container
docker stop $(docker ps -a -q)           # stop all running containers
docker rm [container name]               # delete a stopped container
docker rm $(docker ps -a -q)             # delete all stopped containers
docker logs [container name]             # view container logs
