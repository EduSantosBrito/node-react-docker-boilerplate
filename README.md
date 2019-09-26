<h1 align="center">Welcome to node-react-docker-boilerplate 👋</h1>
<p>
  <a href="https://github.com/EduSantosBrito/node-react-docker-boilerplate#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/EduSantosBrito/node-react-docker-boilerplate/graphs/commit-activity" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://twitter.com/edusantosbrito">
    <img alt="Twitter: EduSantosBrito" src="https://img.shields.io/twitter/follow/edusantosbrito.svg?style=social" target="_blank" />
  </a>
  <a href="https://github.com/EduSantosBrito/node-react-docker-boilerplate/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> A pretty simple boilerplate using Typescript, React and Docker

### 🏠 [Homepage](https://github.com/EduSantosBrito/node-react-docker-boilerplate#readme)

## Prerequisites

- npm >=6.10.3
- node >=12.10.0
- docker >= 18.09.6
- docker-compose >= 1.24.1

## 🚀 Usage
This repository have both production and development mode to build your application.
The `client` folder contains the generated project of [create-react-app](https://github.com/facebook/create-react-app) and a `conf` folder that is used by production mode with [nginx](https://github.com/nginx/nginx)

#### Development mode

In development mode, we have hot reload. Have fun! 

To start developing, clone the repository with:

```sh
  git clone https://github.com/EduSantosBrito/node-react-docker-boilerplate.git
```

Then enter in the project:

```sh
  cd node-react-docker-boilerplate
```

Install dependencies and build `client`:

```sh
  cd client
  npm install
  npm run build
```

Install dependencies and build `server`:

```sh
  cd server
  npm install
  npm run build
```

Now we have to build our containers with docker-compose

```sh
  docker-compose -f docker-compose.dev.yml up --build
```
If everything is allright, your front-end application is at `localhost:50200`, your back-end application is at `localhost:50210` and your database is at `localhost:50220`

* The mongo image created `data` folder, this is where your mongo's `journal` is, **so don't delete it**! 

#### Production mode


To build your application in production mode, clone the repository with:

```sh
  git clone https://github.com/EduSantosBrito/node-react-docker-boilerplate.git
```

Then enter in the project:

```sh
  cd node-react-docker-boilerplate
```

Now we have to build our containers with docker-compose


```sh
  docker-compose -f docker-compose.dev.yml up --build
```
If everything is allright, your front-end application is at `localhost:50100`, your back-end application is at `localhost:50110` and your database is at `localhost:50120`

* The mongo image created `data` folder, this is where your mongo's `journal` is, **so don't delete it**! 

## Author

👤 **Eduardo Santos de Brito**

* Twitter: [@edusantosbrito](https://twitter.com/edusantosbrito)
* Github: [@EduSantosBrito](https://github.com/EduSantosBrito)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/EduSantosBrito/node-react-docker-boilerplate/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2019 [Eduardo Santos de Brito](https://github.com/EduSantosBrito).<br />
This project is [MIT](https://github.com/EduSantosBrito/node-react-docker-boilerplate/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_