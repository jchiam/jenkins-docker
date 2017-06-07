# Jenkins Docker

## Setup

1. Run `docker-compose up`
1. Note auto-generated admin password
1. In host, run `sudo chown -R 1000:1000 /jenkins`

## What's installed in the Dockerfile?

- make: to run ci scripts from source
- NodeJS
- Yarn

### Optional

- firebase-tools: for firebase deployments
