#!/bin/bash

if [ -f ./bower.json ]; then
    bower install --allow-root
fi

# Increase npm install performance
npm set progress=false

npm install
gulp $1
