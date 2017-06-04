#! /bin/bash

environment="staging"
branch="dev"
if [ $1 ] && [ $1 == "production" ]; then
  environment="production"
  branch="master"
fi

remote="app-$environment"

# Do we have the remote locally ?

if [ ! `git remote | grep "$remote"` ]; then
    git remote add "$remote" "https://git.heroku.com/super-jobboard-$environment.git"
    echo -e "Added remote $remote with url \"https://git.heroku.com/super-jobboard-$environment.git\""
fi


git checkout "$branch"
git pull "$branch"
npm run build:heroku
git add dist
git commit -m "Prepare release on $environment"
git push
git subtree push --prefix dist "$remote" master
