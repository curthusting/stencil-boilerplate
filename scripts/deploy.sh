#!/bin/bash
ssh -o "StrictHostKeyChecking no" ${HOST_USERNAME:-hostUsername}@${HOST:-host} "
  cd ~/projects/stencil-boilerplate;
  rm -rf www;
  git reset --hard HEAD;
  git pull;
  npm install;
  npm run build;
"