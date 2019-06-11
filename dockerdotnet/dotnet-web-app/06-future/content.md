Taking everything we know, the future is endless. Here's a thought exercise:

We can use a Dockerfile to create a new web application using [Microsoft's ASP.NET Core templates](https://docs.microsoft.com/dotnet/core/tools/dotnet-new)

Use the following Dockerfile:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build

WORKDIR /web

COPY . ./

RUN dotnet new reactredux --output . --name Demo.Web

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -yq nodejs build-essential

RUN dotnet publish --output site --configuration Release

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

COPY --from=build /web/site .

ENTRYPOINT ["dotnet", "Demo.Web.dll"]
</pre>

This dockerfile uses the ``dotnet new reactredux --output . --name Demo.Web`` command to create a brand new ASP.NET Core project that uses [React](https://facebook.github.io/react/) and [Redux](https://redux.js.org/) for client-side code.

The dockerfile also uses the ``curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -yq nodejs build-essential`` command to install [Node](https://nodejs.org/) and [NPM](https://www.npmjs.com/) so that you can build the client-side project along with the server-side project.

You can then build the container image, run an instance from the image and then view the dynamically assigned port using the following three commands:

```
docker build --tag demofun .
```{{execute}}

```
docker run --detach --publish 80 demofun
```{{execute}}

```
docker ps --latest
```{{execute}}

Take this example and have fun!