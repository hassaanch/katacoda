Now, we need to create an environment to run our code.

We will start by pulling a [.NET Core 3.0](https://dotnet.microsoft.com/download/dotnet-core/3.0) SDK image from Docker Hub using the ``docker pull``{{copy}} command. For simplicity sake, we will use an image that is running a flavor of Ubuntu:

```
docker pull mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

Now we are going to run this container using the ``docker run``{{copy}} command in a special "detached" mode using the ``--detach``{{copy}} flag. This will run our container in the background and still use a pseudo-TTY session to keep the container running:

```
docker run --detach -it mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

We can use the ``docker ps``{{copy}} command to view our running container:

```
docker ps
```{{execute}}

We can use the ``--latest``{{copy}} flag to only pull the most recently created container. We can also use the ``--quiet`` flag to only pull the container ID for the results:

```
docker ps --latest --quiet
```{{execute}}

Now that we have the container's ID using the above command, we can start running commands against the running container. The first thing we want to do is copy all of the code in our current directory into the ``/home``{{copy}} directory on the container using the [``docker cp``{{copy}}](https://docs.docker.com/engine/reference/commandline/cp/) command:

```
docker cp . $(docker ps --latest --quiet):/home
```{{execute}}