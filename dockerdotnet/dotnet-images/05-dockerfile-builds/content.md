We can also use the .NET Core images as part of a Dockerfile.

In this example Dockerfile, we perform a lot of the same actions as we performed in other Dockerfiles. The one major difference is that we use [``dotnet publish``{{copy}}](https://docs.microsoft.com/dotnet/core/tools/dotnet-publish) to build and package our project instead of just ``dotnet build``:"

```
cat Dockerfile
```{{execute}}

> **Note**: This specific image tag uses Alpine Linux ([alpine](https://www.alpinelinux.org/)). Alpine Linux is a distribution focused on building a minimal image for running containers.

As with any other Dockerfile, we can build the container image using the ``docker build``{{copy}} command. In this example, we will build the Dockerfile in the current directory using the ``.``{{copy}} argument and then use the ``--tag``{{copy}} parameter to name our container image ``simpleclient``{{copy}}:

```
docker build --tag simpleclient .
```{{execute}}

Now we can run a container instance using our ``simpleclient`` image with the ``docker run``{{copy}} command:

```
docker run simpleclient
```{{execute}}