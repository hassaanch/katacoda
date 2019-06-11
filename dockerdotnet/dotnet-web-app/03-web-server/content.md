Now that we have a successfully build Docker container image, let's run our web server!

We can run our server using the ``docker run``{{copy}} command. In this example, we will run the ``demoweb:1``{{copy}} container image using the ``--detach``{{copy}} flag. Since this web server will need to expose ports, we will use the ``--publish``{{copy}} parameter. The ``--publish`` parameter requires you to specify ports to bind from container to host (``[host-port]:[container-port]``). In this example, we specify that we want to bind port **80** from the container to the host:

```
docker run --detach --publish 80:80 demoweb:1
```{{execute}}

If you want to see a list of running containers and port bindings, you can run the ``docker ps``{{copy}} command:

```
docker ps
```{{execute}}

Now you can click the **Web Server** tab to view the web application hosted by your container:

Once you are done viewing your web application, you can stop all running containers using the ``docker stop``{{copy}} command. In this example, we pass in the container IDs for every running container as an argument to the command:

```
docker stop $(docker ps --quiet)
```{{execute}}

```
docker ps
```{{execute}}