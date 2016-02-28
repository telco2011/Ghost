#!/bin/bash
echo "Delete Ghost npm modules and builts..."
rm -rf ./node_modules ./core/built

echo "Delete bleak theme extra modules..."
rm -rf ./content/themes/bleak/assets ./content/themes/bleak/bower_components ./content/themes/bleak/node_modules

echo "Build bleak theme extra modules..."
cd ./content/themes/bleak
npm install

echo "Install Ghost dependencies..."
cd ../../..
npm install

echo "Build Ghost builts..."
grunt init
