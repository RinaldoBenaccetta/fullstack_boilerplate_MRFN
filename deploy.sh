#!/usr/bin/env sh

# abort on errors
set -e

# give the repository infos for deploy
git_username = your git user name
git_repo = name of the app repository
# This is the branch that will be created and that will contain the packed app for production.
git_production_branch = prod

# switch to main and reset if main branch exists, otherwise, create it.
# https://stackoverflow.com/questions/26961371/switch-on-another-branch-create-if-not-exists-without-checking-if-already-exi
git switch main

# build
npm run build

# navigate into the build output directory
cd dist

git init
# switch to main and reset if main branch exists, otherwise, create it.
git switch -C main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:$git_username/$git_repo.git main:$git_production_branch

cd -
