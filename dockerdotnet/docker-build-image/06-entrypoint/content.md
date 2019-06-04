Earlier we learned that we can start a container with a specific command or in an *interactive* mode.

If we want to specify a default command to use when someone starts a container from our image, we can use the ``ENTRYPOINT``{{copy}} instruction.

In this example, we specify that we want our container to list the contents of the default directory using the ``dir`` command:

<pre class="file" data-filename="Dockerfile" data-target="append">
ENTRYPOINT ["dir"]
</pre>

Finally, we build our container image using the ``latest``{{copy}} tag to indicate that we want this version of our image to be the default version is a user does not specify a tag:

```
docker build --tag utility:latest .
```{{execute}}