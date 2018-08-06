#!/bin/bash
npm install &&
bundle install &&
bundle update &&
npm run build &&
./generate-static.sh &&
bundle exec jekyll build

printf "blog.jackcoy.io" > public/CNAME