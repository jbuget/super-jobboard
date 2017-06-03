#! /bin/bash

environment="staging"
if [ $1 ] && [ $1 == "production" ]; then
  environment="production"
fi

remote="app-$environment"

# Do we have the remote locally ?

if [ ! `git remote | grep "$remote"` ]; then
    git remote add "$remote" "https://git.heroku.com/super-jobboard-$environment.git"
    echo -e "Added remote $remote with url \"https://git.heroku.com/super-jobboard-$environment.git\""
fi

mv dist bundle

git push origin `git subtree split --prefix bundle master`:gh-pages --force
