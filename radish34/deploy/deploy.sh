#!/bin/bash

mkdir -p ./../config
cp -r ./src/config/backups/* ./../config
cp -r ./src/config/keystore ./../config
node ./src/deploy.js done
