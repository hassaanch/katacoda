The ``RUN``{{copy}} instruction in a Dockerfile executes commands in the default shell.

In many scenarios, you may wish to download packages to your container instance and this can be accomplished using familiar commands and the ``RUN`` instruction.

For our example, we want to install the ``unzip``{{copy}} package in our Ubuntu instance. In a normal Ubuntu shell, we would simply run the ``apt-get update``{{copy}} command to update our package lists. We can then run ``apt-get install``{{copy}} with the name of our package.

In the Dockerfile, we can update the package list with the following instruction:

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN apt-get update
</pre>

Now, we build our container image using a newer tag:

```
docker build --tag utility:0.4-prerelease .
```{{execute}}

We can then add another new line to our Dockerfile to install the ``unzip`` package:

<pre class="file" data-filename="Dockerfile" data-target="append">
RUN apt-get install unzip
</pre>

Again, we build our container image using a newer tag:

```
docker build --tag utility:0.5-prerelease .
```{{execute}}