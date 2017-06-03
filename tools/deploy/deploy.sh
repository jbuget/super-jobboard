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

git push $remote `git subtree split --prefix dist master`:master --force
