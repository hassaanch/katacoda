```
touch Dockerfile
```{{execute}}

<pre class="file" data-filename="Dockerfile" data-target="append">
FROM ubuntu:bionic
</pre>

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN apt-get install unzip
</pre>

```
docker build --tag utility .
```{{execute}}