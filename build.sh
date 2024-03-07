#!/bin/bash

rm -rf src/interscript/maps
mkdir -p src/interscript/maps
pushd ../ruby
bundle config set --local without 'secryst jsexec'
bundle install || exit 1
bundle exec rake compile[python,../python/src/interscript/maps] || exit 1
popd
