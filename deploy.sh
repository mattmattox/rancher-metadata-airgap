#!/bin/bash

echo "customizing Deployment files..."
mkdir ./deploy-ready/
cd ./deploy
for file in `ls *.yaml`
do
  echo "Working on $file"
  cat $file | sed "s/image:.*/image:\ cube8021\/rancher-metadata-airgap:${CI_BUILD_NUMBER}/g" | grep -v 'namespace:' > ../deploy-ready/"$file"
done
