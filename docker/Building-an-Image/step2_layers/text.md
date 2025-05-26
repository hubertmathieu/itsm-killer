# Image layers

An image, is basically a stack of different layers where filesystem changes (additions, deletions, or modifications) are made on each of them. Each added layer are immutable and represent a new state of the filesystem defining the image.

We can analyse each layer of an image with `docker image history image-name`. The new commit "Add node" should the latest commit here.
`docker image history node-base`{{exec}}.

It is now possible to start a brand new container from the `base-node` image we created and use node instantly. Here, the container is used to make a command that prints 'Hello again' from `Node.js`.
`docker run node-base node -e "console.log('Hello again')"`{{exec}}

The base instance of the `ubuntu` image `base-container`, can now be removed. 
`docker rm -f base-container`{{exec}}


