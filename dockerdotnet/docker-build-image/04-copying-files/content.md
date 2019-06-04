<pre class="file" data-filename="Dockerfile" data-target="append">
COPY script.js ./
</pre>

```
docker build --tag utility:0.5-prerelease .
```{{execute}}

<pre class="file" data-filename="Dockerfile" data-target="append">
COPY . ./
</pre>

```
docker build --tag utility:0.6-prerelease .
```{{execute}}