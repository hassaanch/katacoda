
<pre class="file" data-filename="Dockerfile" data-target="append">
ENTRYPOINT ["dir"]
</pre>

Finally, we build our container image using the ``latest``{{copy}} tag to indicate that we want this version of our image to be the default version is a user does not specify a tag:

```
docker build --tag utility:latest .
```{{execute}}

