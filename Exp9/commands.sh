## --- Docker CLI basics ---
docker -h
docker version

## --- Run first container (Ubuntu + top) ---
docker container run -it ubuntu top

## --- Inspect the running container (new terminal) ---
docker container ls
docker container exec -it <CONTAINER_ID> bash
ps -ef
exit

## --- Run an Nginx server from Docker Hub ---
docker container run --detach --publish 8080:80 --name nginx nginx
curl localhost:8080

## --- Run a MongoDB server from Docker Hub ---
docker container run --detach --publish 8081:27017 --name mongo mongo:4.4
curl localhost:8081

## --- Check running containers ---
docker container ls

## --- Clean up ---
docker container stop <id1> <id2> <id3>
docker system prune
