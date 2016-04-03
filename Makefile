all:
	browserify src/charts.js > public/charts.js

release:
	browserify src/charts.js > src/charts.tmp
	uglifyjs src/charts.tmp > public/charts.min.js
	rm src/charts.tmp > /dev/null
