```
touch Dockerfile
```{{copy}}

<pre class="file" data-filename="Dockerfile" data-target="append">
FROM ubuntu:bionic
</pre>

```
docker build --tag utility:0.1-prerelease .
```{{execute}}