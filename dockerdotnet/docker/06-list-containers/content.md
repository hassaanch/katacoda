Finally, we can list containers created from our images using the ``docker ps``{{copy}} command.

The simplest example is to list all running containers.

```
docker ps
```{{execute}}

> **Note**: Since all of our containers ran one-off tasks, none of our containers would be running at this point.

If you want to view a list of all containers including ones that are not running, you simply need to add the ``--all``{{copy}} (or ``-a``{{copy}}) flag:

```
docker ps --all
```{{execute}}

You can also create a real-time view of all containers using the ``docker stats``{{copy}} command:

```
docker stats --all
```{{execute}}

> **Hint**: You can close the interactive stats experience by using the <kbd>Ctrl</kbd>+<kbd>C</kbd> keyboard shortcut.