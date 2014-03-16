#!/bin/bash

echo "Setting up project..."
sleep 1

 bundle
 bundle exec rake db:setup
 bundle exec rake db:create db:migrate RAILS_ENV=test
 bundle exec rails s