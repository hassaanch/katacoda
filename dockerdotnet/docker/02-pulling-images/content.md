The key to using Docker is to build or re-use images.

When you are first getting started, many of the images you use will come from somewhere else. The most common source is a Docker repository like [Docker Hub](https://hub.docker.com/). Docker Hub has many popular images already built for you that you can use right away.

To pull an image from Docker Hub, we need to use the ``docker pull``{{copy}} command.

We can pull Docker Hub images for many tasks like creating a [Debian](https://www.debian.org/) container:

```
docker pull debian
```{{execute}}

We can even pull an image to create a [MySQL](https://www.mysql.com/) database:

```
docker pull mysql
```{{execute}}

By default, this command will pull the version of the image with the **latest** tag. We can specify tags if we want to pull a specific version of an image:

```
docker pull ubuntu:14.04
```{{execute}}