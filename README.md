# UMass CS 532 - HW1 - Spring 2025

Repository containing code for creating a Docker image that can then be used to
launch a container from which the provided C code, as modified for the specified
orders of execution, can be executed.

The following will build a Docker container, start the container, then run the
build and run script as loaded in to the container:

```
# cd to root of repository
docker build -t cs532-hw1-mjohnson:0.0.1 .
docker run --name cs532-hw1-mjohnson-0-0-1 -d cs532-hw1-mjohnson:0.0.1
docker exec -i cs532-hw1-mjohnson-0-0-1 bash /build/build-and-run.sh
```
