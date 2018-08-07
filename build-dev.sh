#!/bin/bash

sed 's/const ROOT_URL = .*/const ROOT_URL = "http:\/\/localhost:4000";/g' react-dev/actions/index.js > index.js.tmp && mv index.js.tmp react-dev/actions/index.js

sh ./generate-static.sh &&
bundle exec jekyll serve --config "_config.yml,_config_dev.yml" --incremental
