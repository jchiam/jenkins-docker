# Jenkins Docker

## Setup

1. Set environment variables in `docker-compose.yml`
1. Create the folders required by `data` container (default: `jenkins/home` and `/jenkins/log`)
1. Ensure root jenkins folder (default: `/jenkins`) is owned by your jenkins user, otherwise run `sudo chown -R 1000:1000 /jenkins` or replace `1000` with the uid of your jenkins user
1. Run `docker-compose up`
1. Note auto-generated admin password

## What's installed in the Dockerfile?

- make: to run ci scripts from source
- NodeJS
- Yarn

### Optional

- firebase-tools: for firebase deployments (checkout `firebase-tools` branch)
