#!/bin/bash
set -euo pipefail
gem install bundler -v '~> 2.0'
gem install bundler -v '~> 1.16'
bundle install
bundle exec rake build
echo ":rubygems_api_key: Basic ${ARTIFACTORY_API_KEY}" > ~/.gemrc
gem push pkg/*.gem
