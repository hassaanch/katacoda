One alternative to manually building and running projects is to publish and distribute projects.

We can use the [``dotnet publish``{{copy}}](https://docs.microsoft.com/dotnet/core/tools/dotnet-publish) command to create a distributable version of our project. The command has a ``--configuration``{{copy}} parameter to indicate the desired build configuration and a ``--output`` parameter to specify the destination for the packaged content. In this example, we are creating a ``Debug``{{copy}} distributable in the ``/home/out`` directory:

```
dotnet publish --configuration Debug --output out
```{{execute}}

We can switch to the ``/home/out`` directory to see the results of our publish command:

```
cd /home/out
```{{execute}}

```
dir
```{{execute}}

> **Note**: You will quickly notice that the a distributable version of a .NET Core project contains many files that are all needed to run the application.

To run a distributable version of a project, simply run the ``dotnet``{{copy}} command and specify the name of the **entry point** DLL. In this example, we are executing the project with the ``Demo.Client.dll``{{copy}} file:

```
dotnet Demo.Client.dll
```{{execute}}

Now, let's switch back to our project (``/home``) directory:

```
cd /home
```{{execute}}

```
dir
```{{execute}}