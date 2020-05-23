# Sample Hanami::API app

Shows how easy it is to achieve a very performant API application with very little code.

Features of this sample app:

- simple example, 3 routes (+ the seed route)
- API app
- DB: Redis / ReJSON (using [RedisRejson_models](https://github.com/makevoid/RedisRejson_models))

### Requirements

- ruby 2.7 installed (hanami-api requires it atm.)
- bundler gem installed (`gem i bundler`)
- redis with ReJSON module running

### Install

    bundle


### Run


    rake


then visit: <http://localhost:3000>


### Run with docker

This method will run Redis with Re-JSON by default

    docker-compose up


then visit: <http://localhost:3000>


### Run only redis via docker


    docker-compose up db

---

@makevoid
