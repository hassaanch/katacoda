Now it's time to construct a Dockerfile that will build our .NET Core web application and then eventually run it.

Just like any other Dockerfile, we will start by using a base image. In this example, we are going to use the familiar ``FROM``{{copy}} instruction to bring in the ``mcr.microsoft.com/dotnet/core/sdk:3.0-alpine``{{copy}} image and tag:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine
</pre>

Now we will use the ``WORKDIR``{{copy}} instruction to change our working directory to ``/web``{{copy}}:

<pre class="file" data-filename="Dockerfile" data-target="append">
WORKDIR /web
</pre>

> **Note**: When building .NET Core applications, changing the working directory is a best practice. Using the default working directory can lead to build errors.

Now we use the ``COPY``{{copy}} instruction to bring in all of our local files from the host machine and place them in the working directory:

<pre class="file" data-filename="Dockerfile" data-target="append">
COPY . ./
</pre>

Now it's time to build our project. We will use the ``RUN``{{copy}} instruct to invoke the .NET CLI. We will use the CLI to run the ``dotnet publish`` command and specify an output folder of ``site``{{copy}} and a configuration of ``Release``{{copy}}:

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN dotnet publish --output site --configuration Release
</pre>

Finally, we will have our web application run whenever the container is started. We can accomplish this using the ``ENTRYPOINT``{{copy}} instruction. In the instruction, we specify that we want to run the ``dotnet``{{copy}} ``site/Demo.Web.dll``{{copy}} command:

<pre class="file" data-filename="Dockerfile" data-target="append">
ENTRYPOINT ["dotnet", "site/Demo.Web.dll"]
</pre>

> **Note**: The editor will automatically save your Dockerfile.

Now that our Dockerfile is finished, we can initiate a new build using the ``docker build``{{copy}} command. For this container image, we will use the ``--tag``{{copy}} parameter to name our container image ``demoweb``{{copy}}. We will also use a tag to version our image. This image version will be called ``1``{{copy}}:

```
docker build --tag demoweb:1 .
```{{execute}}

> **Note**: This build can take several minutes.