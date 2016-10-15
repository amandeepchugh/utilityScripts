#!/bin/bash

remoteRepository='origin'
currentBranch=`git rev-parse --abbrev-ref HEAD`
userName=`whoami`
path='topic/'$userName

# TODO: no need to delete and create if branches are identical: check the hash of the already existent remote branch matches with the local branch
git push $remoteRepository :$path/$currentBranch  #delete existing branch if any
git push $remoteRepository HEAD:$path/$currentBranch #create a new branch