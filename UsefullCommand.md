| command | explain |
| ------- | ------- |
|docker ps|view all docker runned|
|docker image ls|Lists all images|
|docker image rm <image>|Removes an image|
|docker image pull <image>|Pulls image from a docker registry|	
|docker container ls -a|Lists all containers|
|docker container run <image>|Runs a container from an image|
|docker container rm <container>|Removes a container|	
|docker container stop <container>|Stops a container|	
|docker container exec <container>|Executes a command inside the container|
|docker run -i -t --name -h <image>/<id>|run container -i (interface) -t(terminal)|
|docker attach <image name>|goto docker container|
|docker exec <id>/<image> "command"|goto docker container when outside|
|docker commit <name>/<id> <name-image>:tag|commit contianer to image|
|docker save --output <fileName>.tar	<	id>/<name>|export image to file|
|docker load -i <fileName>.tar|load image from file|
|docker tag <id> <dockerId>/<repo>|like git remote set url|
|docker push <dockerId>/<repo>|push|
|docker build -t <imageName> .|build right here|
|docker pull <dockerId>/<repo>|pull|	
|docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <containerName/id>|see ip|