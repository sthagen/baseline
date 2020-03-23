#!/bin/sh
set -e

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

sleep 10 # FIXME-- this should happen after we wake up the stack

printf "\n${GREEN}*** Running setup for createMSA ***${NC}\n"
curl -d '{"filepath": "business-logic/createMSA.zok"}' -H "Content-Type: application/json" -X POST http://localhost:8080/generate-keys # FIXME

printf "\n${GREEN}*** Running setup for createPO ***${NC}\n"
curl -d '{"filepath": "business-logic/createPO.zok"}' -H "Content-Type: application/json" -X POST http://localhost:8080/generate-keys # FIXME

printf "\n${GREEN}*** Setups complete ***${NC}\n"
