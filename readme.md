# Fullstack boilerplate MRFN

## Including MongoDB, React, Fastify and Node.js. All packed with Vite.

### Start

`npm setup`

This command will install the packages for root, frontend and backend.

### Folder organization

- backend
- frontend
    - assets
        - img
        - ts
        - sass
    - public *all of this path go to the root of the final public folder alongside compiled files.*
  - index.html *The entry point.*
- dist *this is the folder ready to be pushed to distant server, it will be created and built by the deploy.sh script. Go see in deploy section further in this doc.*

#### Development
`npm run dev`

Will start backend server at port 3000 and frontend server at port 3001.
Then you can go to your app at `http://127.0.0.1:3001`

In dev mode, call to backend server will be made via a proxy with `/api` route, so `http://127.0.0.1:3001/api` will call the api route in backend.

#### Build
`npm run build`

Will build the frontend to the dist/public folder. **Only frontend will be build**, for bundling all with backend, you must launch the deploy.sh script.

#### Deploy
`sh deploy.sh` (shell scripts are executable on Linux environment)

Before execution, you must fill the variable on lines 8, 10 and 12 in *deploy.sh*. If line 12 is untouched, the production branch will be named *prod*.

Deploy.sh will :
- Switch to main GIT branch.

- Duplicate the backend folder to dist. The node_modules, and test folders will be ignored. package.json will be copied to deploy on distant server.

- Build the frontend (with build script) into the dist folder.

- And then create a branch containing the dist folder on the distant repository, ready to be used in distant server. `npm install` must be executed on distant server.
