#!/bin/bash

# Install the bundler gem
gem install bundler

# Install the gems required for the app
bundle install
clear

# Run the application
ruby index.rb