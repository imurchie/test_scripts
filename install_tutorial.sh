#!/usr/bin/env bash


if ! gem list rspec -i > /dev/null; then
  echo "Installing RSpec gem"
  gem install rspec
fi

if ! gem list selenium-webdriver -i > /dev/null; then
  echo "Install Selenium WebDriver gem"
fi

echo "Downloading SauceTest.rb to the current directory"
curl -s https://raw.github.com/appium/appium/master/sample-code/examples/ruby/sauce_example.rb > SauceTest.rb
