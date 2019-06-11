We can use the .NET Core images to build a project interactively.

In this first example, we are going to grab a version of the **SDK** image running on Ubuntu 19.04 - Disco Dingo ([disco](http://releases.ubuntu.com/disco/)):

```
docker pull mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

Then we are going to run this image in an **interactive** fashion using the default shell (Bash):

```
docker run -it mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

Now that we are in the shell, let's create a project. First we are going to change our current directory to the ``/home``{{copy}} directory:

```
cd ./home
```{{execute}}

Then, we are going to use the [.NET CLI](https://docs.microsoft.com/dotnet/core/tools/) to create a new console application. The [``dotnet new``{{copy}}](https://docs.microsoft.com/dotnet/core/tools/dotnet-new) creates a new project and requires you to specify a project template along with optional parameters. In this example, we specify the ``console``{{copy}} project template to create a console application. We then use the ``--output``{{copy}} parameter to specify that we want this project created in the ``democlient``{{copy}} folder. Finally, we use the ``--name``{{copy}} parameter to change the name of our project (and default namespace) to ``Demo.Client``{{copy}}:

```
dotnet new console --output democlient --name Demo.Client
```{{execute}}

> **Note**: The tool will create a project using the template and then automatically run ``dotnet restore`` to restore [NuGet](https://www.nuget.org/) packages.

Now that our project has been created, we can change our working directory to the ``democlient``{{copy}} directory:

```
cd democlient
```{{execute}}

And then we can run the ``dir``{{copy}} command to see what files are in the directory:

```
dir
```{{execute}}

We can now build the project using the [``dotnet build``{{copy}}](https://docs.microsoft.com/dotnet/core/tools/dotnet-build) command:

```
dotnet build
```{{execute}}

Finally, we can execute the project using the [``dotnet run``{{copy}}](https://docs.microsoft.com/dotnet/core/tools/dotnet-run) command:

```
dotnet run
```{{execute}}

> **Hint**: You can exit the interactive bash shell by using the ``exit``{{copy}} command.