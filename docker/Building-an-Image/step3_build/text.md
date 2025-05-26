# Build an app image

Start a new container named `app-container` from our `base-node` image with interactive terminal.
`docker run --name=app-container -ti node-base`{{exec}}

Create a new basic Node program name `app.js` inside the container and then, exit that container:
- `echo 'console.log("Hello from an app")' > app.js`{{exec}}
- `node app.js`{{exec}} to test the functionnality of the small program.
- `exit`{{exec}}

The `app-container` container now has an app in it that can be runned.

Save a new image `sample-app` based on the change we made in the `app-container` from the `base-node` image.
`docker container commit -c "CMD node app.js" -m "Add app" app-container sample-app`{{exec}}
The ` -c "CMD node app.js"` means that the new image `sample-app`

