install: install-deps

start:
	heroku local

start-backend:
	NODE_ENV=production node dist/server.js

develop:
	heroku local -f Procfile.dev

develop-backend:
	NODE_ENV=development npx nodemon --exec npx babel-node server.js

install-deps:
	npm install

build:
	rm -rf dist
	npm run build

.PHONY: test
