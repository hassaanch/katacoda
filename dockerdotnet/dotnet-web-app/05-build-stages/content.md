While our Dockerfile currently works, we can optimize it further by using **build stages**.

Build stages allow us to build with one container, and then eventually run a different container. This is very useful when you want to build with a large SDK container but run your application on a lightweight runtime container.

To use build stages, we will update our Dockerfile by specifying that our original ``FROM`` instruction is defining the ``construct``{{copy}} stage with the ``AS``{{copy}} keyword:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine AS construct

WORKDIR /web

COPY . ./

RUN dotnet publish --output site --configuration Release
</pre>

We can now add additional ``FROM`` instructions for new stages. We will define a new final build stage that uses special images that host the [ASP.NET runtime](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/). In this example, we add a new stage for the ``mcr.microsoft.com/dotnet/core/runtime:3.0-alpine``{{copy}} image:

<pre class="file" data-filename="Dockerfile" data-target="append">
FROM mcr.microsoft.com/dotnet/core/runtime:3.0-alpine
</pre>

We can then use the ``COPY``{{copy}} instruction to copy content from one build stage to another. We use the ``--from``{{copy}} parameter to specify that the source is the ``construct`` stage. We then copy code from the ``/web/site``{{copy}} folder in the construct stage to the working folder in the final stage:

<pre class="file" data-filename="Dockerfile" data-target="append">
COPY --from=construct /web/site .
</pre>

Finally, we define a new ``ENTRYPOINT`` instruction. Since the DLL files are now in the working directory, we can just specify that we wish to run the ``dotnet Demo.Web.dll`` command:

<pre class="file" data-filename="Dockerfile" data-target="append">
ENTRYPOINT ["dotnet", "Demo.Web.dll"]
</pre>

> **Note**: The editor will automatically save your Dockerfile.

Now we will use the ``docker build`` command to initiate a new build of our container image. The only difference now is our image tag is now ``2``{{copy}}:

```
docker build --tag demoweb:2 .
```{{execute}}

> **Note**: This build can take several minutes.

Once the container instance is built, we can run it using the ``docker run`` command specifying the newest tag of our image:

```
docker run --publish 80:80 demoweb:2
```{{execute}}