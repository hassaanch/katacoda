Since our container is already running, we will need to attach to the running instance to run our build commands.

We can attach to a running container, we can use the [``docker attach``{{copy}}](https://docs.docker.com/engine/reference/commandline/attach/) command. In this example, we use the container ID we figured out before and also use a special ``--detach-keys``{{copy}} parameter to indicate what key combination (``ctrl-c``{{copy}} = <kbd>Ctrl</kbd>-<kbd>c</kbd>) we want to use when we are ready to detach from the container:

```
docker attach --detach-keys=ctrl-c $(docker ps --latest --quiet)
```{{execute}}

Now that we are attached with the default shell, we can change our current working directory to the ``/home``{{copy}} directory and list the files:

```
cd /home
```{{execute}}

```
dir
```{{execute}}

We can first verify that this container has the .NET CLI installed:

```
dotnet --version
```{{execute}}

Now we can use ``dotnet restore``{{copy}} to restore NuGet packages:

```
dotnet restore
```{{execute}}

We can then use ``dotnet build``{{copy}} to build the .NET Core project:

```
dotnet build
```{{execute}}

Finally, we can use ``dotnet run``{{copy}} to execute the .NET Core project:

```
dotnet run
```{{execute}}