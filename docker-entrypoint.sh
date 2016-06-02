#!/bin/bash

# Increase npm install performance
npm set progress=false

npm install
gulp $1
