#!/bin/bash

set -e

rm -rf docs

npm install
bundle install
bundle update

sed 's/const ROOT_URL = .*/const ROOT_URL = "https:\/\/jackman3005.github.io";/g' \
    react-dev/actions/index.js > index.js.tmp && mv index.js.tmp react-dev/actions/index.js

npm run build
./generate-static.sh
bundle exec jekyll build

printf "jackman3005.github.io" > docs/CNAME
