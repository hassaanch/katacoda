Microsoft has created repositories on Docker Hub that contain container images to build and run .NET Core applications. 

These container images feature multiple variations of .NET Core versions, operating systems and even dependencies.

It is highly recommended that you check out the [.NET Core on Docker Hub](https://hub.docker.com/_/microsoft-dotnet-core/) landing page before you proceed with the rest of this lab.

## Microsoft Container Registry

Microsoft serves all of it's container images from the <mcr.microsoft.com> syndication server. The container information is then syndicated to **Docker Hub**, **Red Hat Container Catalog**, **Azure Marketplace**, and other vendors.

Every container image name starts with the syndication server's URI ``mcr.microsoft.com/<container>``. The container images are then further organized into subcategories such as ``mcr.microsoft.com/dotnet``{{copy}} and ``mcr.microsoft.com/dotnet/core``{{copy}}.

For example, Microsoft offers a series of [.NET Core Sample](https://hub.docker.com/_/microsoft-dotnet-core-samples/) container images. To pull the sample application that runs a console application, you would use this command:

```
docker run mcr.microsoft.com/dotnet/core/samples:dotnetapp
```{{execute}}