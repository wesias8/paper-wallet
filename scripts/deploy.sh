#!/usr/bin/env sh

# abort on errors
set -e

# build
RELEASE_TYPE="gh-pages"
yarn build

# navigate into the build output directory
cd dist

# add files
git init
git add -A
git commit -m 'deploy'

# deploy
git push -f git@github.com:ArkEcosystem/new-paper-wallet.git master:gh-pages

cd -
