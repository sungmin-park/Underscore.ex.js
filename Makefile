compile: node_modules
	node_modules/.bin/coffee -c .

node_modules: package.json
	npm install
