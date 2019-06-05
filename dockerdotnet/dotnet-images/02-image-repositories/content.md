For .NET Core applications, there are five main repositories that you will find yourself using:

| Repository | Link | Description |
| --- | --- | --- |
| .NET Core Samples | [mcr.microsoft.com/dotnet/core/samples](https://hub.docker.com/_/microsoft-dotnet-core-samples/) | This repository contains sample images to demonstrate .NET Core on Docker |
| .NET Core SDK | [mcr.microsoft.com/dotnet/core/sdk](https://hub.docker.com/_/microsoft-dotnet-core-sdk/) | This repository contains images with the .NET Core SDK that can be used to build .NET Core applications |
| .NET Core Runtime | [mcr.microsoft.com/dotnet/core/runtime](https://hub.docker.com/_/microsoft-dotnet-core-runtime/) | This repository contains images that can be used to run (but not build) .NET Core applications |
| .NET Core Runtime Dependencies | [mcr.microsoft.com/dotnet/core/runtime-deps](https://hub.docker.com/_/microsoft-dotnet-core-runtime-deps/) | This repository contains images with only the dependencies needed for a self-contained .NET Core application to run |
| ASP.NET Core Runtime | [mcr.microsoft.com/dotnet/core/aspnet](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/) | This repository contains images that can be used to run (but not build) ASP.NET Core applications |

If you wish to build .NET Core applications, you will need the SDK image. This image is, by far, the largest because it includes everything you need to build .NET Core applications:

```
docker pull mcr.microsoft.com/dotnet/core/sdk
```{{execute}}

> **Note**: You will quickly notice that the **sdk** image is massive and can take a while to download.

There are slimmer images available that only include the runtime to run a .NET Core application. You will notice that pulling the **runtime** image is a lot faster than pulling the **SDK** image:

```
docker pull mcr.microsoft.com/dotnet/core/runtime
```{{execute}}

There are images that are even lighter that only include the dependencies required on a system if you ship a [self-contained]() .NET Core application:

```
docker pull mcr.microsoft.com/dotnet/core/runtime-deps
```{{execute}}

Now that we have pulled what we need, we can list all of our images:

```
docker images
```{{execute}}