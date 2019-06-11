If you want to run your container on a different port, you can do so by specifying a specific port:

```
docker run --detach --publish 7000:80 demoweb:1
```{{execute}}

Or you can have Docker assign a port to you by not specifying a host port:

```
docker run --detach --publish 80 demoweb:1
```{{execute}}

Use the ``docker ps``{{copy}} command to view a list of running containers and port bindings:

```
docker ps
```{{execute}}

Click the **Web Server** tab to view the web application hosted by your container instances.

> **Note**: Since these instances do not use port 80, you will need to manually specify the port number when using the **Web Server** tab.

Use the ``docker stop``{{copy}} command to stop all running containers:

```
docker stop $(docker ps --quiet)
```{{execute}}