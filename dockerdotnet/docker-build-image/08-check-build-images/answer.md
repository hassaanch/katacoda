There are many ways to implement this solution.

A simple Dockerfile that creates a **demo.ts** file and runs the **dir** command when it starts is shown below:

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM debian

RUN touch demo.ts

ENTRYPOINT ["dir"]
</pre>

> **Note**: You can also use the **ubuntu** base image if you prefer here. If you use **busybox** or **alpine** base images, you would need to install the bash shell.

Once the Dockerfile is created, build the container image using the ``docker build`` command specifying the value **test** for the ``--tag`` option:

```
docker build --tag test .
```{{execute}}

Finally, run the container image using the ``docker run`` command specifying the container image name of **test**: 

```
docker run test
```{{execute}}