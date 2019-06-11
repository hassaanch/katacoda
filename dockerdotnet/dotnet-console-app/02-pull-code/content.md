
```
docker pull mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

```
docker run --detach -it mcr.microsoft.com/dotnet/core/sdk:3.0-disco
```{{execute}}

```
docker cp . $(docker ps --latest --quiet):/home
```{{execute}}

```
docker attach $(docker ps --latest --quiet)
```{{execute}}

```
cd .\home
dir
```{{execute}}