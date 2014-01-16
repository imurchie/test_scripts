#!/usr/bin/env bash

# remote invocation:
# curl -L https://raw.github.com/imurchie/test_scripts/master/install_tutorial.sh | bash


# don't install all the documentation at the moment
GEM_INSTALL_OPTS="--no-ri --no-rdoc"
TEST_FILE_URL=https://raw.github.com/appium/appium/master/sample-code/examples/ruby/sauce_example.rb


if ! which ruby > /dev/null; then
  echo "No Ruby installation found"
  exit
fi

if ! gem list rspec | grep '^rspec (' > /dev/null; then
  echo "Installing RSpec gem"
  gem install $GEM_INSTALL_OPTS rspec
fi

if ! gem list selenium-webdriver -i > /dev/null; then
  echo "Installing Selenium WebDriver gem"
  gem install $GEM_INSTALL_OPTS selenium-webdriver
fi

echo "Downloading SauceTest.rb to the current directory"
curl -s $TEST_FILE_URL > SauceTest.rb
