#!/usr/bin/env bash

set -xe
echo "Publishing google-vr-plugin ..."

if [ -f /.dockerenv ] ; then
    # Increase version
    npm version patch
fi

npm init -y -scope=alpha-health
npm publish

echo "Done publishing google-vr-plugin"
