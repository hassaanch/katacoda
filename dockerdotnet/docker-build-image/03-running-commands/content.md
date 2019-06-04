

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN apt-get update
</pre>

```
docker build --tag utility:0.3-prerelease .
```{{execute}}

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN apt-get install unzip
</pre>

```
docker build --tag utility:0.4-prerelease .
```{{execute}}