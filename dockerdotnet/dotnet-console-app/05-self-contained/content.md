In the real world, we may want to package our project in such a way that it can run on a machine without .NET Core installed.

Luckily for us, our host machine doesn't have .NET Core installed so we can test this scenario.

The ``dotnet publish`` command has a ``--self-contained``{{copy}} flag that indicates that the distributable should have every file that is required to run the .NET Core project on a machine without .NET Core installed. Since every operating system is different, you are required to specify the [runtime](https://docs.microsoft.com/dotnet/core/rid-catalog)] you are targeting using the ``--runtime``{{copy}} flag.

In this example, we are building a self-contained distributable that should on many desktop 64-bit Linux distributions by specifying the ``linux-x64``{{copy}} runtime. This distributable will be built using the ``Release``{{copy}} configuration and the files will be stored in the ``/home/pub`` directory:

```
dotnet publish --configuration Release --output pub --runtime linux-x64 --self-contained
```{{execute}}

Now that we have created our distributable, we can detach from the running docker container using the keyboard shortcut we specified earlier:

<kbd>Ctrl</kbd>+<kbd>c</kbd>

Now, we can use the ``docker ps`` command again to check that our container is still running:

```
docker ps --latest
```{{execute}}

We can use the ``docker cp`` command in the reverse order now to copy files from the container's ``/home/pub``{{copy}} directory into our current directory (``.``{{copy}}):

```
docker cp $(docker ps --latest --quiet):/home/pub .
```{{execute}}

Once the files are copies, we can use the ``dir`` command to see the new pub folder on our host machine. We can then change our working directory to this new pub folder:

```
dir
```{{execute}}

```
cd pub
```{{execute}}

Once we are within the pub folder, we can use the ``dir`` command to see the files that are part of this self-contained executable. To run the executable, we simply need to run the ``./Demo.Client``{{copy}} file:

```
dir
```{{execute}}

```
./Demo.Client
```{{execute}}