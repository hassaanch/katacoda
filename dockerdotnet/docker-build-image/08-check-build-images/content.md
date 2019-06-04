*Now that you have learned how to build your own container image, let's try a challenge.*

Can you build a container image named **test** that contains a file named **demo.ts** in the default directory and runs the **dir** command when it starts?

> **Hint**: You can use the ``touch <filename>`` command in many Linux distros to create a file.

## Requirements

To complete this challenge you must:

- Create a container image based on any existing container image.
- Set the name of your container image to **test**.
- Create a file within the container named **demo.ts** in the default directory.
- The container image must must be configured to run the **"dir"** command when it starts.

## References

- [Dockerfile](https://docs.docker.com/engine/reference/builder/)
- [Docker Run](https://docs.docker.com/engine/reference/commandline/run/)