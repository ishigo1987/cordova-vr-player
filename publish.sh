#!/usr/bin/env bash

set -xe
echo "Publishing google-vr-plugin ..."

if [ -f /.dockerenv ] ; then
    # Increase version
    npm version patch
    PACKAGE_VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[",]//g' | tr -d '[[:space:]]')

    TO_REPLACE="0.0.0"
    # update plugin.xml with the same version number as the package.json file
    sed -i.bak "s/${TO_REPLACE}/${PACKAGE_VERSION}/g" plugin.xml
fi

npm init -y -scope=alpha-health
npm publish

echo "Done publishing google-vr-plugin"
