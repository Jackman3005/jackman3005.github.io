# Requirements

- Python2
- Ruby
- node

## Setup Python2
```shell
arch -arm64 brew install pyenv
pyenv install 2.7.18
pyenv global 2.7.18
export PATH="$(pyenv root)/shims:${PATH}"
```
## Setup Repo
```shell
npm install

# Set webpack to be executable for `npm run dev` and `npm run build`
chmod +x node_modules/webpack/bin/webpack.js
chmod +x node_modules/webpack-dev-server/bin/webpack-dev-server.js
```

# Deploy
1. Build the app: `./build-prod.sh`
2. Add changes to `/docs`
3. `git push`
4. GH Actions will deploy app

# Develop
Run both build-dev and npm run jekyll in different terminals.

Not working last time tried (14 Aug 2022). JS bundle not created.
```
npm run jekyll // in one terminal
./build-dev.sh //in another
```

## [Old Readme](./OLD_README.md)