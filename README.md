# Prisma Next.js

Base setup for full stack solution to develop web app using Next.js and Prisma alongwith GraphQL

## Getting Started

This project is bootstrapped with [Next.js](https://www.nextjs.org) and [Prisma](https://www.prisma.io). These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Before running the project on your system, make sure you have the following software installed.

- [Docker](https://www.docker.com) - OS level virtualization _(optional)_
- [yarn](https://yarnpkg.com) - fast and reliable dependency management

### Installing

To initialize the project, first navigate to the root directory and install all dependencies

```
yarn install
```

And to start the project in "development" mode use

```
yarn dev
```

To get a production build use

```
yarn build
```

And to get the production build running

```
yarn start
```

The project includes a standalone SQLite database for demo purpose. Feel free to plug in any other data source in it's place. For more information on this topic, visit [here](https://www.prisma.io/docs/getting-started/quickstart-typescript).

## Deployment

The project is deployable in a scalable HA environment using Docker, as well as on a single node. To build an image using Docker run

```
docker build -t prisma-nextjs .
```

Start the container using

```
docker run -p 3000:3000 prisma-nextjs
```

The project can now be viewed at [https://localhost:3000](https://localhost:3000).

## Technologies

- [Apollo GraphQL](https://www.apollographql.com) - simplify app development by combining APIs, databases, and microservices into a single data graph that you can query with GraphQL
- [Docker](https://www.docker.com) - OS level virtualization to deliver software in packages called containers
- [Next.js](https://www.nextjs.org) - Framework for building React applications that scale
- [GraphQL Nexus](https://nexus.js.org) - Declarative code-first GraphQL schemas for JavaScript/TypeScript
- [Prisma](https://www.prisma.io) - Database toolkit to access data with an auto-generated query builder for TypeScript & Node.js
- [TypeScript](https://www.typescriptlang.org) - Strict syntactical superset of JavaScript that adds optional static typing to the language.

## Support

You can open up an issue in case you find any discrepency.

## Authors

- **Wahaj Aayani** - _Initial work_ - [aayani](https://github.com/aayani)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
