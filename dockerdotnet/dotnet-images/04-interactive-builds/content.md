We can use the .NET Core images to build a project interactively.

In this first example, we are going to grab a version of the **SDK** image running on Ubuntu 19.04 - Disco Dingo ([disco](http://releases.ubuntu.com/disco/)):

```
docker pull mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

Then we are going to run this image in an **interactive** fashion using the default shell (Bash):

```
docker run -it mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}



```
cd ./home
```{{execute}}

```
dotnet new console --output democlient --name Demo.Client
```{{execute}}

```
cd democlient
```{{execute}}

```
dotnet build
```{{execute}}

```
dotnet run
```{{execute}}