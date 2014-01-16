#!/usr/bin/env bash


# don't install all the documentation at the moment
GEM_INSTALL_OPTS="--no-ri --no-rdoc"

if ! gem list rspec -i > /dev/null; then
  echo "Installing RSpec gem"
  gem install $GEM_INSTALL_OPTS rspec
fi

if ! gem list selenium-webdriver -i > /dev/null; then
  echo "Installing Selenium WebDriver gem"
  gem install $GEM_INSTALL_OPTS selenium-webdriver
fi

echo "Downloading SauceTest.rb to the current directory"
curl -s https://raw.github.com/appium/appium/master/sample-code/examples/ruby/sauce_example.rb > SauceTest.rb
