The [Docker CLI (Command-Line Interface)](https://docs.docker.com/engine/reference/commandline/cli/) is a utility that is the key to any Docker user's toolbelt.

To get started, we will run a few basic commands in the Docker CLI to verify our environment. All Docker CLI commands start with the command ``docker``{{copy}}.

First, we need to verify the version of the Docker installation using the following command:

```
docker version
```{{execute}}

We can also see verbose system-wide information using the following command:

```
docker info
```{{execute}}