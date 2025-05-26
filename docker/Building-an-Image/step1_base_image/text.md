# Create a base image

Let's remind us that docker images are the basis of container. We can see basic information about them with `docker images`{{exec}}.

Take note that there is 2 type of images:
- Official images like `ubuntu`, `busybox`, `python`
- User images created by user like `user/user-image-name`

We can run a ubuntu container from the base image: `docker run --name=base-container -ti ubuntu`{{exec}}

We can then modify the inside of this container by installing `Node.js` this way:
`apt update && apt install -y nodejs`{{exec}}

After instalation, we can verify that node is installed inside the container: `node -v`{{exec}}

We can now save a new layer from the base image `ubuntu` with `Node.js` installed on it.
The `docker container commit -m "commit message" src-container-name new-container-name` command will help to do so.
First, quit the container with `exit`{{exec}}.
Then, commit the changes: `docker container commit -m "Add node" base-container node-base`{{exec}}
