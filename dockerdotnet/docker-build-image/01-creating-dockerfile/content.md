The **Dockerfile** contains a series of instructions for Docker to use when building an image.

To get started, we used the ``touch Dockerfile`` command to create a new file named **Dockerfile** with you.

> **Note**: The Dockerfile is extensionless.

A Dockerfile is required to have at least one instruction before you can successfully build it.

The most common first line in a Dockerfile is the ``FROM``{{copy}} instruction. This instruction initializes the container image using an existing container image as a **base**. This is useful when you want to start from a known good image and only add what your specific container needs.

For this example, we will use the ``cosmic``{{copy}} version of the ``ubuntu``{{copy}} image:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM ubuntu:cosmic
</pre>

Now we will build our container image. Builds are done using the ``docker build``{{copy}} command. The command requires a single paremeter to specify the location of the Dockerfile. In most examples, you will see the <kbd>.</kbd> character passed in for that parmeter to indicate that the Dockerfile is in the current directory.

The ``--tag``{{copy}} option for builds isntruct Docker on how you want to name and tag the image. In the build example below, we will create a container image named ``utility``{{copy} and tag it ``0.1-prerelease``{{copy}}:

```
docker build --tag utility:0.1-prerelease .
```{{execute}}