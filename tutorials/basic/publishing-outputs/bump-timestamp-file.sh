#!/bin/sh

set -e # fail fast
set -x # print commands

ls -la

whih git
# git clone resource-gist updated-gist
cp -rf ./resource-gist ./updated-gist

uname -a

cd updated-gist
date > bumpme
cat bumpme

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
