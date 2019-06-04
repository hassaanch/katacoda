Any shell or file transfer commands in your Dockerfile will run in the context of a specific directory. You can specify which directory to use by using the ``WORKDIR``{{copy}} instruction.

In this example, we set the working directory to be the ``/app``{{copy}} directory in our container:

<pre class="file" data-filename="Dockerfile" data-target="append">
WORKDIR /app
</pre>

> **Note**: Many programming framework Dockerfiles will use a working directory as a best practice.

Now, we build our container image using a newer tag:

```
docker build --tag utility:0.3-prerelease .
```{{execute}}