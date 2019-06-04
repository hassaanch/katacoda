Once you have an image on your local machine, you can execute the image to create a container running in the foreground.

A container running in the foreground is useful for many things including:
- Running a single-occurence task
- Creating a long-running service that listens for requests

The easiest way to run a container is using the ``docker run``{{copy}} command:

```
docker run debian
```{{execute}}

This will run the container and execute any default (startup) commands before exiting.

Optionally, you can specify a specific command to run. In this example, we ask the container to list the contents of the current directory using the ``dir``{{copy}} command:

```
docker run debian dir
```{{execute}}

Finally, you can create an interactive shell using the ``--interactive``{{copy}} (or ``-it``{{copy}}) option. In this next example, we run a container and interactively open the **bash** shell:

```
docker run --interactive debian bash
```{{execute}}

> **Hint**: You can exit the interactive bash shell by using the ``exit``{{copy}} command.