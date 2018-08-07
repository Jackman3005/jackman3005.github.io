#!/bin/bash
npm install &&
bundle install &&
bundle update &&
npm run build &&
sed 's/const ROOT_URL = .*/const ROOT_URL = "https:\/\/blog.jackcoy.io";/g' react-dev/actions/index.js > index.js.tmp && mv index.js.tmp react-dev/actions/index.js &&
./generate-static.sh &&
bundle exec jekyll build

printf "blog.jackcoy.io" > public/CNAME