# README

This repo contains a test for run SpinaCMS on Docker and Docker Compose.


## How to use

To use this repo, you can use [mise](https://mise.jdx.dev/), make or simple docker commands:
First clone the repo
```bash
git clone https://github.com/rodrigovieira/spinacmstest.git
```

## Using mise
1. Run `mise r compose-up`
2. Run `mise r compose-down`

## Using make
1. Run `make compose-up`
2. Run `make compose-down`

## Using docker
1. Run `docker compose up -d --build`
2. Run `docker compose down`

## Challenges and goals

This project was created to simple test SpinaCMS on Docker and Docker Compose deployments.
The only difficulty was to find the right SpinaCMS, Ruby and gems versions to use, specifically
the right importmap-rails version to use, because the default importmap-rails version is too new.

In this test was addded .dockerignore, Dockerfile, docker-compose.yml, scripts and mise.toml files.
The compose files were created to help the developer to run the project on Docker and Docker Compose locally.
In a production environment some more configurations would be needed, like SSL, reverse proxy/load balancer, etc.