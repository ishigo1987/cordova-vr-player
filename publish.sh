#!/usr/bin/env bash

set -xe
echo "Publishing google-vr-plugin ..."

if [ -f /.dockerenv ] ; then
    # Increase version
    npm version patch
fi

# npm init -y google-vr-plugin
npm publish

echo "Done publishing google-vr-plugin"
