#!/bin/sh

set -e  # exit on first failed command
set -x  # print all executed commands to the terminal

# $NEVERCODE_BUILD_DIR points to the cloned repository root

# suppose you have PHP code in repo_root/php and there is also composer.json
# then you can install dependencies with composer like
cd $NEVERCODE_BUILD_DIR/php
composer install
# then run your PHP script with
php $NEVERCODE_BUILD_DIR/php/my_script.php

# install Python (version 2.7) requirements using pip
sudo pip install requests
sudo pip install -r $NEVERCODE_BUILD_DIR/python/requirements.txt
# run Python (version 2.7) scripts
python $NEVERCODE_BUILD_DIR/python/my_script.py

# for JavaScript you can use npm
npm install whateveryoulike.js
# execute the JavaScript scripts with node
node $NEVERCODE_BUILD_DIR/js/my_script.js

# need something else? install it with Homebrew
brew install needed-package-here
