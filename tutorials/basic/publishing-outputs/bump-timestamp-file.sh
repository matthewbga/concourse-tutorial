#!/bin/sh

set -e # fail fast
set -x # print commands

ls -la

git clone resource-gist updated-gist

cd updated-gist
date > bumpme
echo "bumpme updated. Here it is..."
cat bumpme
echo "bumpme ---^"

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
