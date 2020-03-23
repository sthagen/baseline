# Makefile

# absolute path to the construction site
radish34=./radish34

# over time, as the radish34 use-case is abstracted/generalized into
# the baseline protocol, the pushd/popd hacks will fade away...

.PHONY: build clean contracts deploy-contracts npm-install start stop system-check reset test zk-circuits

default: build

build: npm-install contracts
	pushd ${radish34} && \
	docker-compose build && \
	npm run setup && \
	npm run deploy && \
	popd

clean: stop
	$(radish34)/../bin/clean_npm.sh

contracts:
	pushd ${radish34} && \
	npm run build:contracts && \
	popd

deploy-contracts:
	pushd ${radish34} && \
	npm run deploy && \
	popd

npm-install:
	pushd ${radish34} && \
	npm i && npm run postinstall && \
	popd

start: system-check
	pushd ${radish34} && \
	docker-compose up -d && \
	popd

stop:
	pushd ${radish34} && \
	docker-compose down && \
	popd

system-check:
	@npm run --silent system-check

reset:
	pushd ${radish34} && \
	docker-compose down && \
<<<<<<< HEAD
	docker volume rm radish34_mongo-buyer radish34_mongo-supplier1 radish34_mongo-supplier2 radish34_mongo-merkle-tree-volume radish34_chaindata && \
	npm run deploy && \
	docker-compose down && \
=======
	docker volume rm radish34_mongo-buyer \
	                 radish34_mongo-supplier1 \
			 radish34_mongo-supplier2 \
			 radish34_mongo-merkle-tree-volume \
			 radish34_chaindata && \
	docker container prune -f && \
	docker network prune -f && \
>>>>>>> Only clean node modules and relocate docker invocations
	popd

restart:
	pushd ${radish34} && \
	docker-compose down && \
	docker-compose up -d && \
	popd

test:
	pushd ${radish34} && \
	npm run test && \
	popd

zk-circuits:
	pushd ${radish34} && \
	npm run setup && \
	popd
