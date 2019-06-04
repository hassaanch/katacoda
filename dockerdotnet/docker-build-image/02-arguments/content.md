
For our first instructions, we are going to create a build argument that can be used to specify the version of Ubuntu we want to use for our container image. Build arguments are like parameters in object-oriented code and they are specified using the ``ARG``{{copy}} command. In this example, we will name the argument ``UBUNTU_VERSION``{{copy}} and set it's default value to ``cosmic``{{copy}} *(an older version of Ubuntu than ``bionic``{{copy}})*.

<pre class="file" data-filename="Dockerfile" data-target="replace">
ARG UBUNTU_VERSION=cosmic

$UBUNTU_VERSION
</pre>

Once we have created our first instruction, we can issue our first build. Builds in docker are 

```
docker build --tag utility:0.2-prerelease .
```{{execute}}

```
docker build --tag utility:0.2-prerelease --build-arg UBUNTU_VERSION=bionic .
```{{execute}}