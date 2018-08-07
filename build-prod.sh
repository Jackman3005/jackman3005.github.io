#!/bin/bash
npm install &&
bundle install &&
bundle update &&
sed 's/const ROOT_URL = .*/const ROOT_URL = "https:\/\/blog.jackcoy.io";/g' react-dev/actions/index.js > index.js.tmp && mv index.js.tmp react-dev/actions/index.js &&
npm run build &&
./generate-static.sh &&
bundle exec jekyll build

printf "blog.jackcoy.io" > public/CNAME