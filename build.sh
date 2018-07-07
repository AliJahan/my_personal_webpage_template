#!/usr/bin/env bash

# all commands must exit 0
set -e

# clean build folder
rm -rf build/

# compile html
cp -r html/ build/
pug --obj "{basedir: '.'}" build/
find build/ -type f -name *.pug -delete
find build/ -type f -name *.jade -delete
rm -r build/_templates/

# compile css
lessc --clean-css css/app.less build/app.css

# copy static files
cp -r static/* build/

#transfer to Bolt
scp -r build/* ajaha004@bolt.cs.ucr.edu:public_html/

#delete build
rm -rf build
