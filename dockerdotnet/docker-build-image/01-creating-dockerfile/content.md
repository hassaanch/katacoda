The **Dockerfile** contains a series of instructions for Docker to use when building an image.

To get started, we used the ``touch Dockerfile``{{copy}} command to create a new file named **Dockerfile** with you.

> **Note**: The Dockerfile is extensionless.

A Dockerfile is required to have at least one instruction before you can successfully build it.

The most common first line in a Dockerfile is the ``FROM``{{copy}} instruction. This instruction initializes the container image using an existing container image as a **base**. This is useful when you want to start from a known good image and only add what your specific container needs.

For this example, we will use the ``bionic``{{copy}} version of the ``ubuntu``{{copy}} image:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM ubuntu:bionic
</pre>

```
docker build --tag utility:0.1-prerelease .
```{{execute}}