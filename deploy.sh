#!/bin/bash

echo "setting config"
git config --global user.email "far@bar.com"
git config --global user.name "Travis CI"

cat ~/.gitconfig

echo "init repo + commit"
cd public
git init
git add .
git commit -m "Deploy to Github Pages"

echo "deploying"
git push --force "https://${GITHUB_API_KEY}@github.com/arcarson/gatsby-with-travis-ci.git" master:gh-pages
