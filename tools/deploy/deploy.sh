#! /bin/bash

environment="staging"
if [ $1 ] && [ $1 == "production" ]; then
  environment="production"
fi

remote="app-$environment"

# Do we have the remote locally ?
`git remote | grep "$remote"` || {
    # nope, add it
    echo -e "add remote $remote with url \"https://git.heroku.com/super-jobboard-$environment.git\""
    git remote add "$remote" "https://git.heroku.com/super-jobboard-$environment.git"
} && true

cp -r dist tmp
git push origin `git subtree split --prefix tmp master`:$remote --force
