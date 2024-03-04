#!/bin/sh

rm -rf src/interscript/maps
mkdir -p src/interscript/maps
pushd ../ruby
bundle install || exit 1
bundle exec rake compile[python,../python/src/interscript/maps] || exit 1
popd
