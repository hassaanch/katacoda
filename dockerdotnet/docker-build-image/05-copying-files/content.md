For this next section, we used the ``touch app.js`` and ``touch script.js`` commands to create files in the current directory for you.

If we were creating a container to use as a build host, we would need to copy files from our host machine into the container instance.

The easiest way to do this is to use the ``COPY``{{copy}} instruction.

In this first example, we use the ``COPY`` instruction to copy the ``script.js``{{copy}} file from the current directory of our host machine to the current directory (``./``{{copy}}) of the container:

<pre class="file" data-filename="Dockerfile" data-target="append">
COPY script.js ./
</pre>

Now, we build our container image using a newer tag:

```
docker build --tag utility:0.7-prerelease .
```{{execute}}

You can also use patterns to match multiple files. This next line will copy all files from the current directory of the host machine (``.``{{copy}}) into the current directory (``./``{{copy}}) of the container:

<pre class="file" data-filename="Dockerfile" data-target="append">
COPY . ./
</pre>

Again, we build our container image using a newer tag:

```
docker build --tag utility:0.8-prerelease .
```{{execute}}

We can alternatively use the ``ADD``{{copy}} instruction to perform similar functionalty. The ``ADD`` instruction also adds the ability to download files from the internet.

For example, we have an image file located at the <http://bit.ly/azbtnsm> url. We can download that file and store it in the current directory (``./``{{copy}}) of the container:

<pre class="file" data-filename="Dockerfile" data-target="append">
ADD http://bit.ly/azbtnsm ./
</pre>

And again, we build our container image using a newer tag:

```
docker build --tag utility:0.9-prerelease .
```{{execute}}