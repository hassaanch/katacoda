```
docker pull mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

Ubuntu 19.04 - Disco Dingo ([disco](http://releases.ubuntu.com/disco/))

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