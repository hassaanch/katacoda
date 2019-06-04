Now that we have built our image with multiple tags, we can go and take a look at the list of all images in Docker using the ``docker images``{{copy}} command:

```
docker images
```{{execute}}

We can be a bit more selective and just look at the ``utility``{{copy}} images:

```
docker images utility
```{{execute}}

If we want to run a new container using our image, we can do that using the ``docker run``{{copy}} command with the name of our container image (``utility``{{copy}}):

```
docker run utility
```{{execute}}

> **Note**: The **latest** tag is inferred if you do not specify a tag here.

Finally, we can use the ``docker ps --all``{{copy}} command to view the list of running and stopped container instances.

```
docker ps --all
```{{execute}}