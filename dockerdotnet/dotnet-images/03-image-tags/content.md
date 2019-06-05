Many of the .NET Core image repositories contain a wide variety of image tags so that you can be prescriptive in the type of environment where you want to build or run .NET Core.

> **Note**: For the next few examples, we are going to work with the [mcr.microsoft.com/dotnet/core/runtime](https://hub.docker.com/_/microsoft-dotnet-core-runtime/) repository.

## Tag Composition

Tags are usually composed in the following format:

```
[Symantic Version]-[Operating System]
```

For example, if we want version ``1.1``{{copy}} of .NET Core running on ``jessie`` (Debian 8), we would use the follwing tag:

```
1.1-jessie
```{{copy}}

You would then use the tag to pull the image:

```
docker pull mcr.microsoft.com/dotnet/core/runtime:1.1-jessie
```{{execute}}

## Latest

The **latest** tag in the .NET Core repositories typically refers to an image with the following characteristics:

- Running on [Debian 9 "Stretch"](https://www.debian.org/releases/stretch/)
    - Typically is based on the [debian:stretch-slim](https://hub.docker.com/_/debian) container image on Docker Hub
- Using the [latest stable version](https://dotnet.microsoft.com/download) of .NET Core
    - At the time when this lab was authored, this version was [2.2.5](https://github.com/dotnet/core/blob/master/release-notes/2.2/2.2.5/2.2.5.md)

Knowing this information, we can infer that pulling the ``2.2.5-stretch-slim`` tag would be equivalent to pulling the ``latest`` tag:

```
docker pull mcr.microsoft.com/dotnet/core/runtime:2.2.5-stretch-slim
```{{execute}}

```
docker pull mcr.microsoft.com/dotnet/core/runtime:latest
```{{execute}}

## Preview

Images are often made available for preview versions of .NET Core. For example, you can create an image based on .NET Core 3.0 ([3.0.0-preview5](https://github.com/dotnet/core/blob/master/release-notes/3.0/preview/3.0.0-preview5.md)) that is hosted on Debian 10 ([buster-slim](https://www.debian.org/releases/testing/releasenotes)):

```
docker pull mcr.microsoft.com/dotnet/core/runtime:3.0.0-preview5-buster-slim
```{{execute}}

> **Note**: Both the Debian and .NET Core versions have not been released yet.