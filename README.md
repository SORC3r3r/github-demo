# Quick GitHub Demo

This repository contains a very simple http server.

Run this server and open your browser at `http://localhost:80`

You should see this text on your screen:
```
Hello HTTP World!
```


## Run the application

You can either run this with `nodejs` or use `Docker` to run the simple webserver.

### Run with nodejs

* You need to have nodejs installed on your machine.
* Clone this repository to your desired location
```
git clone git@github.com:SORC3r3r/github-demo.git
```
* Navidate in the cloned repository
```
cd github-demo
```
* Install the dependencies
```
npm install
```
* Run the application
```
npm start
```
* Open your browser on `http://localhost:80`


### Run with Docker

* You need to have Docker installed on your machine.
* Clone this repository to your desired location
```
git clone git@github.com:SORC3r3r/github-demo.git
```
* Navidate in the cloned repository
```
cd github-demo
```
* Build the docker container (with the name my-hello-world-container and version 1.0.0)
```
docker build -t my-hello-world-container:1.0.0 .
```
* Run the container (connect port 80 of container with the port 80 of localhost)
```
docker run -p 80:80 my-hello-world-container:1.0.0
```
* Open your browser on `http://localhost:80`

* You can have a look at the running container in a separate shell
```
docker ps
```
* You can connect into the container
```
docker exec -it <CONTAINER_ID> sh
```
* Show all your Docker images
```
docker images
```


## GitHub Action Workflow

This repository contains a build workflow for the docker container.

After forking this repository and after every push of this repository the workflow will run.

You can have a look at the workflow run in the `Actions` tab.

If the branch on which the action is running is the `master` branch, the built container is published to your GitHub registry.

After publishing, you can find the Docker container on the landing page of your repository.
