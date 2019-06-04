If you are unsure what images you have downloaded to your Docker host machine, you can always list those images using the ``docker images``{{copy}} command.

The most basic way to list images is to use the following command:

```
docker images
```{{execute}}

You can list images that matches a specific repository name:

```
docker images ubuntu
```{{execute}}

You can even list images that matches both a repository name and tag:

```
docker images ubuntu:16.04
```{{execute}}

For complex queries, there is a ``--filter``{{copy}} option. In this example, we find all images that were created before the **mysql** image:

```
docker images --filter "before=mysql"
```{{execute}}