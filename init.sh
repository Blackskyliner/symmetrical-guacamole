#!/bin/bash

pushd my-adonisjs-app || exit
npm install
if [ ! -e .env ]; then
    cp .env.example .env
    node ace generate:key
    sed -i 's/HOST=localhost/HOST=0.0.0.0/' .env
fi

# Create Runtime Dir
mkdir -p tmp
mkdir -p var

node ace.js migration:run
node ace.js db:seed
popd || exit
