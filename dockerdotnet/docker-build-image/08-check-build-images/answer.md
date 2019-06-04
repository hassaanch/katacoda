<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM ubuntu

RUN touch demo.ts

ENTRYPOINT ["dir"]
</pre>