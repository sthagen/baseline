#!/bin/bash

mkdir -p ../config
cp -r ./src/config/backups/* ../config
node ./src/deploy.js done
