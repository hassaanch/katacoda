Finally, we can list containers created from our images using the ``docker ps``{{copy}} command.

The simplest example is to list all running containers.

```
docker ps
```{{execute}}

> **Note**: Since all of our containers ran one-off tasks, none of our containers would be running at this point.

If you want to view a list of all containers including ones that are not running, you simply need to add the ``--all``{{copy}} (or ``-a``{{copy}}) flag:

```
docker ps -a
```{{execute}}