#! /bin/bash

environment="staging"
branch="dev"
if [ $1 ] && [ $1 == "production" ]; then
  environment="production"
  branch="master"
fi

remote="app-$environment"

# Do we have the remote locally ?

if [ ! `git remote | grep app-staging` ]; then
    git remote add app-staging "https://git.heroku.com/super-jobboard-staging.git"
    echo -e "Added remote app-staging with url \"https://git.heroku.com/super-jobboard-staging.git\""
fi

git checkout dev
git pull dev
npm run build:heroku
git add dist
git commit -m "Prepare release for staging"
git push
git subtree push --prefix dist app-staging master
